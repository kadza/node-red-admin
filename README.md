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

It needs to be investigated. The below files have older version.
What I did is, copy package.json. Update deps in package.json manually. Copy package-lock.json and change project-version manually

Copy package.json:

```
docker cp node-red-admin:/data/package.json ./node-red-flows-home/package.json
```

Copy package-lock.json:

```
docker cp node-red-admin:/data/package-lock.json ./node-red-flows-home/package-lock.json
```
