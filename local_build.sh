#!/bin/sh

# clean up
rm -rf storage/app/static


# BUILD STATIC SITE
php please ssg:generate

# Build assets
npm run build

# move from public to build folder 
mv public/build storage/app/static

vercel build --prod

# Deploy to Vercel
vercel deploy --prebuilt --prod  --archive=tgz
