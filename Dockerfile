FROM rstudio/plumber
MAINTAINER Martin Siklar <martin.siklar@gmail.com>

RUN R -e "install.packages('dplyr')"

CMD ["/app/plumber.R"]

