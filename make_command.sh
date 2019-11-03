find . -type directory | sort | grep -v .git | perl -pe "s/\.\///g" | perl -pe "s/^\.$//g" | grep -v "^$" | perl -pe "s/^/mkdir /g"
paste -d " " <(find . -type file | sort | grep -v .git | grep  -v *.sh | perl -pe "s/\t/ /g" | perl -pe "s/\.\//wget https:\/\/raw\.githubusercontent\.com\/hirokoma\/rails6-boost\/master\//g" ) <(find . -type file | sort | grep -v .git | grep  -v *.sh | perl -pe "s/\.\//-O /g")

