FROM pandoc/typst:latest-ubuntu

# Final resume's name
# Julian-A-Avar-C-resume-2025-06-15
ARG NAME

WORKDIR /usr/src/resume

COPY ./${NAME} .

RUN ["typst", "compile", "main.typ", "${NAME}.pdf"]
