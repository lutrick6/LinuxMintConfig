# Make Function
mkfunc(){
  read -p "Comment and describe what the function does: " comment
  read -p "Function name: " fname
  read -p "Function action: " faction
  echo -e "# ${comment}" >> ~/.bash_functions
  echo -e "${fname}(){\\n\\t${faction}\\n}\\n" >> ~/.bash_functions
  . ~/.bash_functions
}

# function for making aliases
mkalien(){
  read -p "Name your alias: " name
  read -p "Qantify your alias: " function
  echo "alias $name='$function'" >> ~/.bash_aliases
  . ~/.bash_aliases
}

# function for organizing the downloads folder.
# grabs the files with ext's and then moves them to their respected folders
organize(){
  # finds pictures and uses move (mv) function from xargs to move the output items into ~/Pictures
  find /home/ilucid/Downloads -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) -print0 | xargs -0 -I '{}' /bin/mv "{}" /home/ilucid/Pictures;
  find /home/ilucid/Downloads -type f \( -iname "*.mp4" -o -iname "*.mkv" \) -print0 | xargs -0 -I '{}' /bin/mv "{}" /home/ilucid/Videos;
  find /home/ilucid/Downloads -type f \( -iname "*.txt" -o -iname "*.doc" -o -iname "*.pdf" \) -print0 | xargs -0 -I '{}' /bin/mv "{}" /home/ilucid/Documents;
  find /home/ilucid/Downloads -type f \( -iname "*.mp3" \) -print0 | xargs -0 -I '{}' /bin/mv "{}" /home/ilucid/Music;
  find /home/ilucid/Downloads -type f \( -iname "*.gif" \) -print0 | xargs -0 -I '{}' /bin/mv "{}" /home/ilucid/Pictures/GIFs
}

# Change Directory and List
cdl(){
  cd $@;
  ls -1X
}

# Remove and List
rml(){
    rm -rf $@;
    ls -1X
}

# Makes a directory then jumps into it
mcd() {
  mkdir -p $@;
  cd $@;
  ls -1X
}
