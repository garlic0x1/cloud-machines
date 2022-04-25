FROM golang:1.18-alpine

# install chromium, nmap, and utilities
RUN apk add chromium nmap git curl netcat-openbsd jq

# golang apps
RUN go install github.com/garlic0x1/words@latest
RUN go install github.com/tomnomnom/unfurl@latest
RUN go install github.com/projectdiscovery/httpx/cmd/httpx@latest
RUN go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
RUN go install github.com/garlic0x1/url-miner@main
RUN go install github.com/garlic0x1/go-reflect@main
RUN go install github.com/hakluke/hakrawler@latest
RUN go install github.com/ffuf/ffuf@latest
RUN go install github.com/lc/gau/v2/cmd/gau@latest

# from source
WORKDIR /go/src/
RUN git clone https://github.com/garlic0x1/gxss
WORKDIR /go/src/gxss
RUN go install .
WORKDIR /go/src/
RUN git clone https://github.com/garlic0x1/chrome-crawler
WORKDIR /go/src/chrome-crawler
RUN go install .

WORKDIR /
# seclists
RUN git clone https://github.com/danielmiessler/SecLists.git


