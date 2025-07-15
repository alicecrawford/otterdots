#!/bin/zsh


typeset -A _ext_color_fg=(
  ["archives"]="#dc143c"
  ["images"]="#ee82ee"
  ["videos"]="#9e71cf"
  ["documents"]="#eec48d"
  ["audio"]="#c927c2"
  ["cryptography"]="#a6e22d"
  ["immediate"]="#bba03a"
  ["temp"]="#777087"
  ["configuration"]="#fbed7d"
  ["source_code"]="#0fb9e0"
  ["scripts"]="#ec5f67"
  ["disk_images"]="#ff7f50"
  ["locks_pid"]="#e55285"
)
typeset -A _ext_color_bg=(

)

typeset -A _ext_attr_defs=(
  ["immediate"]="u"
)

typeset -A _ls_color_fg=(
  ["fi"]="0"
  ["di"]="#10aef8"
  ["ex"]="#9eeb61"
  ["pi"]="#e7c547"
  ["so"]="#d93234"
  ["bd"]="#fd9720"
  ["cd"]="#ffbe00"
  ["ln"]="#a1efe4"
  ["or"]="#ddd0f4"
)

typeset -A _ls_color_bg=(
  ["or"]="#dc143c"
)

typeset -A _ls_attr_defs=(
  ["ex"]="i"
)

_ls_extensions_archives=(
  "*.7z" "*.WARC" "*.Z" "*.a" "*.apk" "*.ar" "*.arj" "*.bsp" "*.bz2" "*.cab"
  "*.cpio" "*.crx" "*.deb" "*.dmg" "*.ear" "*.gz" "*.ipa" "*.iso" "*.jad"
  "*.jar" "*.lrz" "*.lz" "*.lzma" "*.lzo" "*.pak" "*.par" "*.pk3" "*.rar"
  "*.rpm" "*.s7z" "*.sz" "*.tar" "*.tbz" "*.tc" "*.tgz" "*.txz" "*.vdf" "*.vpk"
  "*.war" "*.warc" "*.xpi" "*.xz" "*.z" "*.zip" "*.zipx" "*.zoo" "*.zpaq"
  "*.zst" "*.zstd" "*.zz" 
)
_ls_extensions_images=(
  "*.JPG" "*.TIFF" "*.ai" "*.arw" "*.bmp" "*.cbr" "*.cbz" "*.cr2" "*.dicom"
  "*.drw" "*.dvi" "*.dwg" "*.eps" "*.epsf" "*.flif" "*.gif" "*.heif" "*.icns"
  "*.ico" "*.jpeg" "*.jpg" "*.jxl" "*.nef" "*.nth" "*.orf" "*.pbm" "*.pgm"
  "*.png" "*.pnm" "*.ppm" "*.ps" "*.psd" "*.pxd" "*.pxm" "*.raw" "*.stl"
  "*.svg" "*.tif" "*.tiff" "*.webp" "*.xpm"
)
_ls_extensions_videos=(
  "*.3g2" "*.3gp" "*.IFO" "*.MOV" "*.asf" "*.avi" "*.divx" "*.f4v" "*.flv"
  "*.gp3" "*.gp4" "*.heic" "*.m2ts" "*.m2v" "*.m4v" "*.mkv" "*.mov" "*.mp4"
  "*.mpeg" "*.mpg" "*.ogm" "*.ogv" "*.rmvb" "*.t" "*.ts" "*.vob" "*.webm"
  "*.wmv"
)
_ls_extensions_documents=(
  "*.PDF" "*.adoc" "*.asciidoc" "*.cbr" "*.cbz" "*.chm" "*.djvu" "*.doc"
  "*.docm" "*.docx" "*.dvi" "*.eml" "*.eps" "*.epub" "*.etx" "*.fotd" "*.ics"
  "*.iml" "*.info" "*.key" "*.markdown" "*.md" "*.mkd" "*.mobi" "*.nfo"
  "*.numbers" "*.odb" "*.odp" "*.ods" "*.odt" "*.org" "*.pages" "*.pdf" "*.pod"
  "*.pps" "*.ppt" "*.ppts" "*.pptsm" "*.pptx" "*.pptxm" "*.rdf" "*.rst" "*.rtf"
  "*.tex" "*.textile" "*.txt" "*.vcard" "*.xla" "*.xln" "*.xls" "*.xlsx"
  "*.xlsxm" "*.xltm" "*.xltx" "*AUTHORS" "*CHANGES" "*CONTRIBUTORS" "*COPYING"
  "*COPYRIGHT" "*HISTORY" "*INSTALL" "*LICENSE" "*NOTICE" "*PATENTS" "*README"
  "*README.md" "*README.rst" "*VERSION"
)
_ls_extensions_audio=(
  "*.3ga" "*.S3M" "*.aac" "*.aiff" "*.alac" "*.amr" "*.ape" "*.au" "*.caf"
  "*.cda" "*.dat" "*.dts" "*.fcm" "*.flac" "*.m4a" "*.mid" "*.midi" "*.mka"
  "*.mod" "*.mp3" "*.mp4a" "*.oga" "*.ogg" "*.opus" "*.pcm" "*.s3m" "*.sid"
  "*.wav" "*.wma" "*.wv" "*.wvc"
)
_ls_extensions_cryptography=(
  "*.asc" "*.bfe" "*.enc" "*.gpg" "*.p12" "*.p7s" "*.pem" "*.pfx" "*.pgp"
  "*.sig" "*.signature" "*id_dsa" "*id_ecdsa" "*id_ed25519" "*id_rsa"
)
_ls_extensions_immediate=(
  "*.nix" "*.rake" "BUILD" "BUILD.bazel" "Brewfile" "CMakeLists.txt"
  "Cargo.toml" "Containerfile" "Dockerfile" "Gemfile" "Gruntfile.coffee"
  "Gruntfile.js" "Justfile" "Makefile" "PKGBUILD" "Pipfile" "Podfile"
  "Procfile" "Rakefile" "RoboFile.php" "SConstruct" "Vagrantfile" "WORKSPACE"
  "bsconfig.json" "build.gradle" "build.sbt" "build.xml" "composer.json"
  "meson.build" "mix.exs" "package.json" "pom.xml" "tsconfig.json"
  "webpack.config.js"
)
_ls_extensions_temp=(
  "*.BUP" "*.SKIP" "*.aria2" "*.bak" "*.bk" "*.dll" "*.dump" "*.dylib" "*.elc"
  "*.eln" "*.mdump" "*.o" "*.orig" "*.pyc" "*.pyo" "*.rlib" "*.sassc"
  "*.stackdump" "*.swn" "*.swo" "*.swp" "*.tmp" "*.un~" "*.zcompdump" "*.zwc"
  "*.~" "*core"
)
_ls_extensions_configuration=(
  "*.RData" "*.b?ash_login" "*.bash_logout" "*.bash_profile" "*.bib" "*.dhall"
  "*.dtd" "*.entitlements" "*.epf" "*.fxml" "*.hidden-color-scheme"
  "*.hidden-tmTheme" "*.ini" "*.json" "*.jsonl" "*.last-run"
  "*.merged-ca-bundle" "*.msg" "*.ndjson" "*.pbxproj" "*.pcf" "*.pgn" "*.plist"
  "*.profile" "*.psf" "*.rdata" "*.rnc" "*.rng" "*.rss" "*.rstheme" "*.sgml"
  "*.strings" "*.sublime-build" "*.sublime-commands" "*.sublime-keymap"
  "*.sublime-project" "*.sublime-settings" "*.sublime-snippet"
  "*.sublime-workspace" "*.tmTheme" "*.toml" "*.user-ca-bundle" "*.viminfo"
  "*.xcconfig" "*.xcsettings" "*.xcuserstate" "*.xcworkspacedata" "*.xml"
  "*.xsd" "*.yaml" "*.yml" "*.zlogin" "*.zlogout" "*.zprofile" "*.zshenv"
  "*authorized_keys" "*cfg" "*conf" "*config" "*known_hosts" "*rc"
)
_ls_extensions_source_code=(
  "*.C" "*.F" "*.F03" "*.F08" "*.F90" "*.F95" "*.H" "*.M" "*.S" "*.agda"
  "*.agdai" "*.ahk" "*.asm" "*.c" "*.c++" "*.cc" "*.cl" "*.clj" "*.cljc"
  "*.cljs" "*.cljw" "*.coffee" "*.cp" "*.cpp" "*.cr" "*.cs" "*.css" "*.ctp"
  "*.cxx" "*.el" "*.eml" "*.f" "*.f03" "*.f08" "*.f90" "*.f95" "*.for" "*.ftn"
  "*.gemspec" "*.go" "*.gs" "*.h" "*.h++" "*.hi" "*.hpp" "*.hs" "*.htm"
  "*.html" "*.hxx" "*.ii" "*.ipynb" "*.java" "*.jhtm" "*.js" "*.jsm" "*.jsp"
  "*.jsx" "*.lagda" "*.lagda.md" "*.lagda.rst" "*.lagda.tex" "*.less" "*.lhs"
  "*.lisp" "*.lua" "*.m" "*.mht" "*.mjs" "*.moon" "*.mustache" "*.nim"
  "*.nimble" "*.php" "*.py" "*.rb" "*.rkt" "*.rs" "*.s" "*.sass" "*.sc"
  "*.scala" "*.scpt" "*.scss" "*.swift" "*.sx" "*.tcc" "*.tcl" "*.twig" "*.v"
  "*.vala" "*.vapi" "*.vb" "*.vba" "*.vbs" "*.xsh" "*.zig"
)
_ls_extensions_scripts=( "*.BAT" "*.awk" "*.bash" "*.bat" "*.kak" "*.sed" "*.sh" "*.vim" "*.zsh" )
_ls_extensions_disk_images=(
  "*.bin" "*.fvd" "*.img" "*.iso" "*.nrg" "*.qcow" "*.sparseimage" "*.toast"
  "*.vcd" "*.vdi" "*.vfd" "*.vhd" "*.vhdx" "*.vmdk" "*.qcow2"
)
_ls_extensions_locks_pid=("*.pid" "*.state" "*lock" "*lockfile")

_lsc=""


typeset -g _esc_seq=""
function gen_esc_seq() {
  if [[ $fg_clr == "0" ]]; then
    if [[ -z $bg_clr || $bg_clr == "0" ]]; then
      if [[ -z "$attr" ]]; then
        _esc_seq="0"
        return
      fi
    fi
  fi

  if [[ $fg_clr != "0" ]]; then
    if [[ $fg_clr = "#"* ]]; then
      _red=$((0x$fg_clr[2,3]))
      _green=$((0x$fg_clr[4,5]))
      _blue=$((0x$fg_clr[6,7]))
      _esc_seq="38;2;${_red};${_green};${_blue}"
    else
      _esc_seq="38;5;${fg_clr}"
    fi
  fi

  if [[ $bg_clr != "0" && ! -z "$bg_clr" ]]; then
    if [[ $bg_clr = "#"* ]]; then
      _red=$((0x$bg_clr[2,3]))
      _green=$((0x$bg_clr[4,5]))
      _blue=$((0x$bg_clr[6,7]))
      if [[ ! -z ${_esc_seq} ]]; then
        _esc_seq="${_esc_seq};"
      fi
      _esc_seq="${_esc_seq}48;2;${_red};${_green};${_blue}"
    else
      if [[ ! -z ${_esc_seq} ]]; then
        _esc_seq="${_esc_seq};"
      fi
      _esc_seq="${_esc_seq}48;5;${bg_clr}"
    fi
  fi

  if [[ $attr = *"b"* ]]; then
    if [[ ! -z "${_esc_seq}" ]]; then
      _esc_seq="${_esc_seq};"
    fi
    _esc_seq="${_esc_seq}1"
  fi

  if [[ $attr = *"u"* ]]; then
    if [[ ! -z "${_esc_seq}" ]]; then
      _esc_seq="${_esc_seq};"
    fi
    _esc_seq="${_esc_seq}4"
  fi

  if [[ $attr = *"i"* ]]; then
    if [[ ! -z "${_esc_seq}" ]]; then
      _esc_seq="${_esc_seq};"
    fi
    _esc_seq="${_esc_seq}3"
  fi
}

for idnt fg_clr in ${(kv)_ls_color_fg}; do
  bg_clr=$_ls_color_bg[$idnt]
  attr=$_ls_attr_defs[$idnt]
  gen_esc_seq

  if [[ -z "$_lsc" ]]; then
    _lsc="${idnt}=${_esc_seq}"
  else
    _lsc="${_lsc}:${idnt}=${_esc_seq}"
  fi
done

for idnt fg_clr in ${(kv)_ext_color_fg}; do
  bg_clr=$_ext_color_bg[$idnt]
  attr=$_ext_attr_defs[$idnt]
  gen_esc_seq

  if [[ $_esc_seq == "0" ]]; then
    continue
  fi
  
  for glb in ${(P)${:-_ls_extensions_$idnt}}; do
    if [[ -z "$_lsc" ]]; then
      _lsc="${glb}=${_esc_seq}"
    else
      _lsc="${_lsc}:${glb}=${_esc_seq}"
    fi
  done
done

export EZA_COLORS=$_lsc
