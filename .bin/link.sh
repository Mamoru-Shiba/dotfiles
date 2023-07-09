#!/bin/zsh
echo 'link.sh実行'
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# macの場合
if [ "$(uname)" == "Darwin" ]; then
    # MacOSの場合、.configディレクトリのシンボリックリンクを作成
    ln -fnsv "${SCRIPT_DIR}/.config" "$HOME"
fi

for dotfile in "${SCRIPT_DIR}"/.??* ; do
    [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/path" ]] && continue
    ln -fnsv "$dotfile" "$HOME"
done