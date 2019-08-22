# APK Decompiler

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/morxander/apk_decompiler) ![MicroBadger Size](https://img.shields.io/microbadger/image-size/morxander/apk_decompiler) ![Docker Pulls](https://img.shields.io/docker/pulls/morxander/apk_decompiler)


##  Requirements
- Docker

## How to use
Clone the repo then navigate to the repo directory to build the image :

```bash
docker build . -t apk_decompiler
```

Then navigate to the `apk` file directory and execute the following command :

```bash
docker run --rm -v $(pwd):/apk apk_decompiler apktool d /apk/{apk_file_name.apk} -o /apk/output
```

You should find a directory called `output`  with the decompiled apk files.

To make it easy in the future you can add it as function in your `bashrc` :

```bash
function  decompile_apk {
	docker run --rm -v $(pwd):/apk apk_decompiler /usr/local/bin/apktool d /apk/$1 -o /apk/output
}
```

Then make sure to reload your bash profile and to use it execute  :

```bash
decompile_apk file.apk
```