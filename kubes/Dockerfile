FROM golang:1.18-alpine

# some basic utilities
RUN apk add nmap git curl netcat-openbsd jq

# dependency for chrome-crawler, url-miner, and gxss
RUN apk add chromium

# my apps
RUN go install github.com/garlic0x1/url-miner@main
RUN go install github.com/garlic0x1/go-reflect@main
RUN go install github.com/garlic0x1/gxss@main
RUN go install github.com/garlic0x1/chrome-crawler@main

# go apps
RUN go install github.com/garlic0x1/words@latest
RUN go install github.com/tomnomnom/unfurl@latest
RUN go install github.com/projectdiscovery/httpx/cmd/httpx@latest
RUN go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
RUN go install github.com/hakluke/hakrawler@latest
RUN go install github.com/ffuf/ffuf@latest
RUN go install github.com/lc/gau/v2/cmd/gau@latest

# wordlists
RUN mkdir words
RUN curl https://raw.githubusercontent.com/danielmiessler/RobotsDisallowed/master/top1000.txt > words/robots1k.txt
