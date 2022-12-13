#! /usr/bin/env bash

# SPDX-FileCopyrightText: 2022 Redradix S.L. <info@redradix.com>
#
# SPDX-License-Identifier: Unlicense

set -e

REPOS=$(find . -type d -name ".git")

TOTAL_COMMITS=0

for REPO_PATH in $REPOS
do
  echo "Entrando en $REPO_PATH"
  cd "$REPO_PATH"

  echo "Actualizando referencias desde el repositorio remoto"
  git fetch --all > /dev/null 2>&1 || echo "git fetch falló, puede que falten algunos commits"

  read REPO_COMMITS <<< $(git log --since="2022-01-01" --oneline | wc -l)
  echo "Commits en el repo: $REPO_COMMITS"

  echo

  TOTAL_COMMITS=$(($TOTAL_COMMITS + $REPO_COMMITS))
  cd - > /dev/null
done

echo
echo "Total de commits contados: $TOTAL_COMMITS"
