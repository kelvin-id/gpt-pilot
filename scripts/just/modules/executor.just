#Just/ASD

me:
    @echo The executable is at: {{just_executable()}}

[private]
alias REF:
    #!/usr/bin/env bash
    echo "alias {{REF}}='just --unstable '" >> ~/.bashrc
    source ~/.bashrc
    echo "Persistent alias '{{REF}}' set."
