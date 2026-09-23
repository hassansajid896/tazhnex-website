# TAZHNEX Solutions — Website

Single-page static site for TAZHNEX Solutions (transportation coordination, Karachi).

## Run locally with Docker

```bash
docker build -t tazhnex-site .
docker run -p 8080:80 tazhnex-site
```

Then open http://localhost:8080

## Deploy

Any static host or container platform works (Render, Railway, Fly.io, a VPS, etc.) since this
is just nginx serving one HTML file. Point your domain's DNS at wherever you run the container.

## One-time setup: activate lead email notifications

The quote form sends a copy of every submission to **tazhnexsolutions@gmail.com** using
FormSubmit (no backend, no API key). The **first** time someone submits the form after you
go live, FormSubmit will send a confirmation email to that inbox — you must click the
confirmation link in it once, or later submissions won't be delivered.

Note: this email fetch is blocked if the page is only viewed through the claude.ai
artifact preview (its sandbox blocks outgoing network requests). It works normally once
the site is deployed on your own domain/hosting — WhatsApp still works either way.
