\input{setup/preamble.tex}
\input{setup/macros.tex}

\usepackage{tabularx}

\begin{document}
    %%% Sections %%%
    \vspace*{-1em}
    \tcbset{colframe=white,colback=white,arc=0mm, height=0.85\textheight}
    \begin{tcolorbox}
        %\vspace*{-0.5em}      
         \adjustbox{valign=t}{\begin{minipage}{0.3\textwidth} % Side Panel 
            \begin{tcolorbox}[height=1.\textheight, grow to left by=0.6cm, colback=backdrop,colframe=backdrop,arc=0mm]
                %\begin{minipage}{\textwidth} % Picture Area
                \includegraphics[width=\textwidth]{foto.jpeg} % Picture 
                \vspace{1em}

                Nacimiento: 06/08/1995

                \vspace{0.8em}

                Nacionalidad: Colombia
                
                %\vspace{0.7em}
                
                %\vspace{0.7em}
                \vspace{0.8em}
                
                \address{Bogotá, Colombia} \par
                
                \vspace{0.7em}

                \phone{+57 313 335 2017} \par

                \vspace{0.7em}
                \linkedin{https://www.linkedin.com/in/gestebangomez/}{Gerardo Esteban Gómez} \par \vspace{0.7em}

                \github{https://github.com/GomezGerardoEsteban}{GomezGerardoEsteban} \par \vspace{0.7em}

                \faYoutube     \url{https://www.youtube.com/@GEsteban_Gomez}
                \par \vspace{0.7em}


                
                \vspace{1.3em}
                \parbox{0.35\linewidth}{Inglés 
                
                Español}
                \parbox{0.55\linewidth}{B2 
                
                Nativo}
                \vspace{2em}

                \textbf{Resumen:}
                \vspace{0.7em}

                Soy un economista especializado en análisis cuantitativo y procesamiento de datos, con experiencia en métodos estadísticos, computacionales y visualización de resultados.\\ Actualmente me desempeño como consultor en análisis cuantitativo, desarrollando productos en R e implementando técnicas de análisis en proyectos de investigación.

            
            \end{tcolorbox}
        \end{minipage}}
               %%% TItle %%%
        %\tcbset{colframe=title,colback=title,arc=0mm}
        \adjustbox{valign=t}{\begin{minipage}{0.70\textwidth} % Main Panel (e.g. Education, Work Experience)
            \begin{tcolorbox}[grow to right by=0.5cm,height=0.14\textheight, colframe=title,colback=title,arc=0mm]
                \name{Gerardo Esteban Gómez-Santiago}{\textbf{Economista especializado en análisis de datos}\\
                
                \email{gomezsantiagogerardoesteban@gmail.com}\\
                } % Name and Profession % Name and Profession
                %\vspace{0.5em}
            \end{tcolorbox}
        %\end{minipage}
        %\begin{minipage}[b]{0.68\textwidth} % Main Panel (e.g. Education, Work Experience)
            \begin{tcolorbox}[grow to right by=0.8cm,height=0.5\textheight,colframe=white,colback=white]
                % Profile Section
                %%\section*{Profile}             
                \section*{Experiencia Laboral}
                    \work{Científico de datos}{04/2025 - Actualidad}{Evaluar SAS}{
                    Actualmente trabajo en la formulación y evaluación de proyectos y políticas públicas, liderando el área cuantitativa y generando evidencia sólida que respalde nuestras investigaciones y propuestas.\\
                    \emph{Referencias: hnavarro@evaluar.org.co - Hugo Navarro (responsable directo)\\}
                    }
                    \work{Docente en métodos cuantitativos}{09/2024 y 10/2025}{Flacso México}{
                    Estoy a cargo de los talleres impartidos en los módulos de manipulación de bases de datos y de minería de texto con procesamiento de lenguaje natural en el diplomado de ciencia de datos.\\
                    \emph{Referencias: oscar.fontanelli@flacso.edu.mx - Oscar Fontanelli (responsable directo)\\}
                    }
                    \work{Pasantía de Investigación}{08/2023}{Ecopetrol}{
                    Tuve la posibilidad de hacer la pasantía de la maestría en la Empresa Colombiana de Petróleos. Elaboré un informe sobre la política energética para la incorporación de fuentes de energía renovable en el sistema eléctrico colombiano, haciendo énfasis en la energía geotérmica como un área potencial para la diversificación de la empresa.\\
                    \emph{Referencias: jjaime98@gmail.com - Jaime Jimenez (responsable directo)\\}
                    }
                    \work{Análista de control interno}{04/2021 - 07/2022}{Molino Cañuelas}{ 
                    Molino Cañuelas es una empresa agroalimentaria argentina, mi trabajo como analista consistía en conciliar la información interna de cada planta en términos de insumos y producto terminado. Manejaba información de las distintas etapas del proceso productivo, a partir de los cuales debía generar reportes y tableros de control para implementar planes de mejora dentro de la empresa.\\
                    \emph{Referencias: mancinelli@molca.com.ar - Carolina Mancinelli (Jefa Administración)\\}
                    }
                    \work{Profesor Adjunto}{04/2021 - 07/2021}{Universidad Nacional de Río Cuarto}{
                    Estuve participando en la catedra de Economía Internacional (3 año de la carrera de economía) en la Universidad Nacional de Río Cuarto como coordinador de trabajos prácticos.\\
                    \emph{Referencias: fgranato@fce.unrc.edu.ar - Florencia Granato (Resp. de catedra)}
                    
                    }
                    \end{tcolorbox}
        \end{minipage}}
    \end{tcolorbox}

\pagebreak
           %%% Education Section %%%
\section*{Educación}

\subsection*{Certificados}

\begin{itemize}

\item{\textbf{Diplomado en tópicos avanzados de ciencia de datos.} \\
Facultad de Ciencias Exactas, Universidad Nacional de Río Cuarto (2024).}
\item{\textbf{Seminario de Big Data y ciencia de datos con R y Python.} \\
Facultad de Ciencias Económicas, Universidad Nacional de Río Cuarto (2022).}
\item{\textbf{Elementos de regresión y clasificación en lenguaje R}.\\
Facultad de Ciencias Exactas, Universidad Naciona de Río Cuarto (2021)}

\end{itemize}

\subsection*{Titulos}

\begin{itemize}
\item{\textbf{Maestría en Gobierno y Asuntos Públicos}, Flacso México (2022 - 2024).\\
Tesis: \emph{Incorporación de energía solar y eólica en el sistema eléctrico colombiano. Una aplicación de la matriz insumo producto para analizar la política del sector.}\\
Promedio \textbf{9.81}}
\item{\textbf{Licenciatura en Economía}, Universidad Nacional de Río Cuarto (2015 - 2020).\\
Tesis: \emph{Desarrollo territorial en Colombia, un análisis de la evolución de los departamentos especializados en la producción de bienes transables bajo un nuevo tipo de inserción internacional.}\\
Promedio \textbf{8.47}}
\end{itemize}
    
%    \begin{tcolorbox}
%        \vspace*{-0.5em}
%            \begin{minipage}[t]{0.999\textwidth} % Main Panel (e.g. Education, Work Experience)
%% Uncomment the following line you want to change the background color
                %\begin{tcolorbox}[grow to right by=0.75cm,height=0.8\textheight,colframe=white,colback=lightgray]

\section*{Habilidades}
    \vspace{0.3cm}

    \begin{itemize}
        \item{\textbf{Análisis de datos}\\
        Análisis y procesamiento de bases de datos, estadística descriptiva e inferencial. Manejo de tópicos de econometría avanzada como aplicación de modelos de inferencia causal, métodos de aprendizaje estadístico supervisado y no supervisado (PCA, arboles de decisión, clusters) y análisis espacial (mapas). Análisis de redes, automatización de reportes y visualización de datos.\\
        Manejo de R, Python, Power BI y SQL.}
        \item{\textbf{Docencia e Investigación}\\
        Cuento con experiencia en gestión bibliográfica, redacción de informes y en el armado y seguimiento de planes de trabajo. Manejo de grupos y adaptación y generación de contenido para facilitar el aprendizaje.}
    \end{itemize}
         
\section*{Publicaciones}

    \begin{itemize}
        \item{\emph{Gómez-Santiago Gerardo E.}, Evolución de la producción petrólera en la orinoquia colombiana ¿Desarrollo o enclave?, \textbf{X Seminario Internacional sobre Desenvolvimento regional (2021) - Universidad de Santa Cruz do Sul}}
        \item{\emph{Gómez-Santiago Gerardo E.}, Inflación estructural en Colombia, un análisis de su vinculo con la evolución del sector externo 2000 - 2018, \textbf{XXVII Jornadas de intercambio de conocimientos cientificos y técticos (2019) - FCE, Universidad Nacional de Río Cuarto}}
        \item{\emph{Gómez-Santiago Gerardo E. \& Orozco-García Carolina}, Effects of the type of municipal financing on subnational democracy in Colombia, \textbf{Latin American Conference on Subnational Governance 2024 - Escuela de Gobierno, Universidad de los Andes}}
        \item{\emph{Borda Marianela, Gómez-Santiago Gerardo E.,  Paisio Gonzalo \& Tello Diego}, Evidencias de disposición a pagar por bioinsumos que reducen GEI: oportunidades para estrategias ganar-ganar en la agricultura argentina, \textbf{Revista de Economía y Estadística, 63(1), 153-170. Universidad Nacional de Córdoba}}
    \end{itemize}
        
%% Uncomment the following line if uncommented above
                %\end{tcolorbox}
       % \end{minipage}  
    %\end{tcolorbox}
\end{document}
