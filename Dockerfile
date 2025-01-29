FROM node:20.17.0-slim

ENV NODE_ENV production
ENV NEXT_TELEMETRY_DISABLED 1
WORKDIR /app

COPY --chmod=0777  public ./public
COPY --chmod=0777  .next/standalone ./
COPY --chmod=0777  .next/static ./.next/static

ENV PORT 3000
ENV HOSTNAME "0.0.0.0"

USER node
CMD ["server.js"]