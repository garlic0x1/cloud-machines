FROM golang:1.18-alpine

# install chromium, nmap, and utilities
RUN apk add chromium nmap git curl netcat-openbsd jq

# if you are going to ssh into the container you may want these
# RUN apk add bash vim
# RUN /bin/bash

# golang apps
RUN go install github.com/garlic0x1/words@latest
RUN go install github.com/tomnomnom/unfurl@latest
RUN go install github.com/projectdiscovery/httpx/cmd/httpx@latest
RUN go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
RUN go install github.com/garlic0x1/url-miner@main
RUN go install github.com/garlic0x1/go-reflect@main
RUN go install github.com/garlic0x1/gxss@main
RUN go install github.com/garlic0x1/chrome-crawler@main
RUN go install github.com/hakluke/hakrawler@latest
RUN go install github.com/ffuf/ffuf@latest
RUN go install github.com/lc/gau/v2/cmd/gau@latest

# seclists
RUN git clone https://github.com/danielmiessler/SecLists.git
