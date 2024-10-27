#!/bin/sh

# ./build.sh in the root directory of the project

# BUILD STATIC SITE
php please ssg:generate

# Build assets
npm run build
vercel build --prod

# Deploy to Vercel
vercel deploy --prebuilt --prod  --archive=tgz