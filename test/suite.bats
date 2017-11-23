#!/usr/bin/env bats


@test "post_push: hook is up-to-date" {
  run sh -c "cat Makefile | grep $DOCKERFILE: \
                          | cut -d ':' -f 2 \
                          | cut -d '\\' -f 1 \
                          | tr -d ' '"
  [ "$status" -eq 0 ]
  [ "$output" != '' ]
  expected="$output"

  run sh -c "cat '$DOCKERFILE/hooks/post_push' \
               | grep 'for tag in' \
               | cut -d '{' -f 2 \
               | cut -d '}' -f 1"
  [ "$status" -eq 0 ]
  [ "$output" != '' ]
  actual="$output"

  [ "$actual" == "$expected" ]
}


@test "Git is installed" {
  run docker run --rm --entrypoint sh $IMAGE -c 'which git'
  [ "$status" -eq 0 ]
}

@test "Git runs ok" {
  run docker run --rm --entrypoint sh $IMAGE -c 'git --help'
  [ "$status" -eq 0 ]
}


@test "Mercurial is installed" {
  run docker run --rm --entrypoint sh $IMAGE -c 'which hg'
  [ "$status" -eq 0 ]
}

@test "Mercurial runs ok" {
  run docker run --rm --entrypoint sh $IMAGE -c 'hg --help'
  [ "$status" -eq 0 ]
}


@test "Subversion is installed" {
  run docker run --rm --entrypoint sh $IMAGE -c 'which svn'
  [ "$status" -eq 0 ]
}

@test "Subversion runs ok" {
  run docker run --rm --entrypoint sh $IMAGE -c 'svn --help'
  [ "$status" -eq 0 ]
}


@test "Bazaar is installed" {
  run docker run --rm --entrypoint sh $IMAGE -c 'which bzr'
  [ "$status" -eq 0 ]
}

@test "Bazaar runs ok" {
  run docker run --rm --entrypoint sh $IMAGE -c 'bzr --help'
  [ "$status" -eq 0 ]
}


@test "SSH is installed" {
  run docker run --rm --entrypoint sh $IMAGE -c 'which ssh'
  [ "$status" -eq 0 ]
}

@test "SSH runs ok" {
  run docker run --rm --entrypoint sh $IMAGE -c 'ssh -V'
  [ "$status" -eq 0 ]
}


@test "Dep is installed" {
  run docker run --rm --entrypoint sh $IMAGE -c 'which dep'
  [ "$status" -eq 0 ]
}

@test "Dep runs ok" {
  run docker run --rm $IMAGE version
  [ "$status" -eq 0 ]
}
