```
docker run -e ENV=acpt  --rm --name smoker -v $(pwd)/src:/tester/sources/src -v $(pwd)/reports:/tester/sources/reports/ local/smoke-tester "chrome:headless" ./src/soumvt-premium.ts
```
