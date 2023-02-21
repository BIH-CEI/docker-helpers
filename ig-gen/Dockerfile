FROM hl7fhir/ig-publisher-base:latest
ARG SUSHI_VERSION=3.0.0-beta.1

WORKDIR /usr/share/ig

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt update \
    && apt install -y \
    nodejs
RUN wget https://raw.githubusercontent.com/HL7/ig-publisher-scripts/main/_updatePublisher.sh && chmod a+x _updatePublisher.sh
RUN npm install -g fsh-sushi@$SUSHI_VERSION
RUN wget https://github.com/plantuml/plantuml/releases/latest/download/plantuml.jar

COPY entrypoint.sh .
ENTRYPOINT [ "./entrypoint.sh" ]
