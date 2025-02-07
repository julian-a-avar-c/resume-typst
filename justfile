default:
    just --list

# Change all archived folders to read only
archive-all:
    #!/usr/bin/env -S scala-cli shebang
    //> using scala 3.7.2
    //> using dep com.lihaoyi::os-lib:0.11.4

    for
        path <- os.list(os.pwd / "archive")
        if os.isDir(path)
    do
        os.perms.set(path, "rwxrwxrwx")
        for subPath <- os.list(path) do
            os.perms.set(subPath, "rwxrwxrwx")
            os.perms.set(subPath, "rwxr--r--")
        end for
        os.perms.set(path, "rwxr--r--")
    end for

archive-last:
    #!/usr/bin/env -S scala-cli shebang
    //> using scala 3.7.2
    //> using dep com.lihaoyi::os-lib:0.11.4

    val file = os.pwd / "main.typ"
    os.move.over(
        os.pwd / "src",
        os.pwd / "archive" / "Julian-A-Avar-C-resume-2025-08-14"
    )

    os.perms.set(path, "rwxrwxrwx")
    for subPath <- os.list(path) do
        os.perms.set(subPath, "rwxrwxrwx")
        os.perms.set(subPath, "r--r--r--")
    end for
    os.perms.set(path, "rwxr--r--")

compile-only source target:
    typst compile --root . {{ canonicalize(source) }} {{ target }}

compile:
    just compile-only ./src/main.typ ./out/Julian-A-Avar-C-resume-{{ datetime('%Y-%m-%d') }}.pdf

watch-only source target:
    typst watch --root . {{ canonicalize(source) }} {{ target }}

watch:
    just watch-only ./src/main.typ ./out/Julian-A-Avar-C-resume-{{ datetime('%Y-%m-%d') }}.pdf

build-docker:
    docker build --build-arg NAME=$(just last-dir) -t resume-builder:latest .
