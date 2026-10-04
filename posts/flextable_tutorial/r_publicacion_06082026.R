
rm(list = ls())

library(flextable)
library(tidyverse)
library(officer)
library(jsonlite)
library(extrafont)

gabo <- tribble(~"obra", ~"year", ~"desc",
                "La hojarasca", "1955", "",
                "El coronel no tiene quien le escriba", "1961", "",
                "La mala hora", "1962", "",
                "Cien años de soledad", "1967", "",
                "El otoño del patriarca", "1975", "",
                "Crónica de una muerte anunciada", "1981", "",
                "El amor en los tiempos del cólera", "1985", "",
                "El general en su laberinto", "1989", "",
                "Del amor y otros demonios", "1994", "",
                "Memoria de mis putas tristes", "2004", "",
                "En agosto nos vemos", "2024", "")

gabo <- gabo |>
  mutate(desc = case_when(
    obra == "La hojarasca" ~
      "Primera novela de Gabo. Tres voces narran el velorio de un médico extranjero en Macondo. Explora la memoria, el honor y la decadencia de un pueblo tras la llegada de la compañía bananera.",
    obra == "El coronel no tiene quien le escriba" ~
      "Un viejo coronel espera con dignidad una pensión de guerra que nunca llega. Retrato de la pobreza, la burocracia y la esperanza obstinada en un pueblo sofocado por el calor y la violencia política.",
    obra == "La mala hora" ~
      "Un pueblo colombiano es sacudido por pasquines anónimos que revelan secretos vergonzosos. La violencia política y el miedo colectivo hacen explotar las tensiones de toda una comunidad.",
    obra == "Cien años de soledad" ~
      "La saga de los Buendía en el mítico Macondo: fundación, guerras, amores y decadencia a lo largo de siete generaciones. Obra cumbre del realismo mágico y de la literatura en lengua española.",
    obra == "El otoño del patriarca" ~
      "Un dictador caribeño vive más de 200 años entre el poder absoluto y la soledad total. Novela poética sobre la tiranía latinoamericana, narrada en un denso e hipnótico flujo de conciencia.",
    obra == "Crónica de una muerte anunciada" ~
      "Todos saben que Santiago Nasar va a morir, pero nadie lo impide. Un crimen de honor reconstruido como crónica periodística que explora la culpa colectiva y la fatalidad del destino.",
    obra == "El amor en los tiempos del cólera" ~
      "Fermín Ariza espera más de 50 años para reencontrarse con Fermina Daza. Una oda al amor tardío, la vejez y la perseverancia, inspirada en la historia de los padres del propio García Márquez.",
    obra == "El general en su laberinto" ~
      "Los últimos días de Simón Bolívar en su viaje por el río Magdalena hacia el exilio. Una reflexión íntima sobre el poder, el fracaso y la soledad inevitable del héroe latinoamericano.",
    obra == "Del amor y otros demonios" ~
      "Una niña criolla es encerrada en un convento tras ser mordida por un perro rabioso. El sacerdote enviado a exorcizarla se enamora de ella. Amor, fe y superstición en la Cartagena colonial.",
    obra == "Memoria de mis putas tristes" ~
      "Un periodista de 90 años decide regalarse una noche con una joven virgen y descubre el amor por primera vez. Última novela original de Gabo: tierna, melancólica y profundamente polémica.",
    obra == "En agosto nos vemos" ~
      "Ana Magdalena Bach visita cada agosto la tumba de su madre en una isla caribeña y vive un romance distinto cada vez. Publicada póstumamente en 2024, contra la voluntad inicial del autor.",
    TRUE ~ desc
  ))


# Funcion para scrapear imagenes de portadas, ya no se ejecuta porque tenemos la carpeta
# con las imagenes

# get_cover_url <- function(title, author = "gabriel garcia marquez") {
#   query <- URLencode(paste0(
#     "https://openlibrary.org/search.json?title=",
#     title, "&author=", author, "&limit=1"
#   ))
#   
#   resp <- tryCatch(
#     fromJSON(query, simplifyVector = FALSE),
#     error = function(e) NULL
#   )
#   
#   if (is.null(resp) || length(resp$docs) == 0) return(NA_character_)
#   
#   cover_id <- resp$docs[[1]]$cover_i
#   if (is.null(cover_id)) return(NA_character_)
#   
#   paste0("https://covers.openlibrary.org/b/id/", cover_id, "-L.jpg")
# }
# 
# gabo <- gabo |>
#   mutate(
#     cover_url = map_chr(obra, \(t) {
#       Sys.sleep(0.4)
#       get_cover_url(t)
#     })
#   )


# 
# gabo <- gabo |> 
#   relocate(cover_url, .before = 1)

# Crear carpeta si no existe
# dir.create("img/portadas_gabo", recursive = TRUE, showWarnings = FALSE)

# Nombre de archivo: título normalizado (sin acentos, espacios → guiones)
gabo <- gabo |>
  mutate(
    filename = obra |>
      str_to_lower() |>
      str_replace_all("[áàä]", "a") |>
      str_replace_all("[éèë]", "e") |>
      str_replace_all("[íìï]", "i") |>
      str_replace_all("[óòö]", "o") |>
      str_replace_all("[úùü]", "u") |>
      str_replace_all("[ñ]", "n") |>
      str_replace_all("[^a-z0-9]+", "_") |>
      str_remove("_$") |>
      paste0(".jpg"),
    filepath = file.path("img/portadas_gabo", filename)
  )

# Descargar
# walk2(gabo$cover_url, gabo$filepath, \(url, path) {
#   message("Descargando: ", basename(path))
#   download.file(url, destfile = path, mode = "wb", quiet = TRUE)
#   Sys.sleep(0.3)
# })

# Verificar
file.info(gabo$filepath) |>
  tibble::rownames_to_column("filepath") |>
  mutate(filepath = basename(filepath)) |>
  select(filepath, size)


tb <- gabo |> 
  select(-filename) |>
  relocate(filepath, .before = 1) |> 
  flextable() |> 
  set_header_labels(
    filepath = "Portada",
    obra = "Obra",
    year = "Año de publicación",
    desc = "Resumen"
  ) |> 
  colformat_image(j = "filepath", width = .75, height = 1.2) |> 
  width(j = 1:4, width = c(2,2.5,1,8)) |> 
  align(j = c(1,3), align = "center", part = "body") %>%
  align(j = c(2,4), align = "left", part = "body") %>%
  border_outer(border = fp_border(color = "darkblue", width = 1.2)) %>% 
  border(j = c(1), border.right = fp_border(color = "darkblue", width = 1.2), part = "all") %>% 
  border_inner_h(border = fp_border(color = "darkblue", width = 1.2)) |> 
  align(align = "center", part = "header") %>% 
  fontsize(size = 25, part = "header") %>% 
  fontsize(size = 20, part = "body") %>% 
  italic(j = 2, part = "body") |> 
  bold(j = 2, part = "body") |> 
  bold(part = "header") %>% 
  font(fontname = "Cambria", part = "all") %>% 
  bg(part = "header", bg = "gray95") %>% 
  bg(part = "body", bg = "white") |> 
  bg(j = c(1,2), i = c(2,4,6,9), bg = "#E1D5AF") |> 
  add_footer_lines("Información de Wikipedia | Imagenes obtenidas de openlibrary.org\nEn amarillo las obras ya leidas hasta agosto de 2026") %>%
  italic(part = "footer") %>%
  fontsize(size = 9, part = "footer") %>%
  color(color = "gray40", part = "footer") %>%
  font(fontname = "Cambria", part = "footer") 


save_as_image(x = tb, path = "img/portadas_gabo/imagen_linkedin_06082026.png", expand = 2)


?save_as_image
