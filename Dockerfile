FROM rocker/rstudio:4.4.2

#Install the remotes package
RUN Rscript -e "install.packages('remotes')"

#Install a specific version of a package
RUN Rscript -e "remotes::install_version('cowsay', version = '0.8.0', repos = 'http://cran.us.r-project.org')"
