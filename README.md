## Clean:

```
$ docker stop node-red-admin && docker rm node-red-admin
```

## Deploy:

```
$ ./deploy.sh
```

## Add new plugin

Add plugin in node-red admin

Copy package.json:

```
docker cp node-red-admin:/data/package.json ./node-red-flows-home/package.json
```

Copy package-lock.json:

```
docker cp node-red-admin:/data/package-lock.json ./node-red-flows-home/package-lock.json
```
