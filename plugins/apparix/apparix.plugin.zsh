bookmark_help () {
  echo "Usage: bt [NAME]"
  echo "Change directory to a bookmark\n"

  bookmark_list
}

# list bookmarks
bookmark_list () {
  echo "Available bookmarks: \n"
  apparix | sed -n '4,$'p | uniq | sed s/^j/•/
  echo ""
}

# bookmark a folder
bookmark_add () {
  apparix --add-mark $1
}

# to bookmark
bookmark_to () {
  if [[ $# -gt 0 ]]; then
    folder=$(apparix $1)
    cd $folder
  else
    bookmark_help
  fi
}

# delete bookmark
bookmark_delete () {
  if [[ $# -gt 0 ]]; then
    apparix -purge-mark $1 2>/dev/null
    echo "Bookmark $1 deleted"
    bookmark_list
  else
    bookmark_help
  fi
}

# auto complete
_bookmark_complete() {
  A=$(apparix | sed -n '4,$'p  | awk '{ print $2 }')
  _arguments ":::($A)"
}

alias to=bookmark_to
alias bl=bookmark_list
alias bm=bookmark_add