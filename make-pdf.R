# Makes pdf slides for all lectures
lapply(list.files(path = "lecture-notes", pattern = "\\.html$", full.names = TRUE, recursive = TRUE)[3],
       function(file) {
         xaringan::decktape(
           file,
           output = paste0(tools::file_path_sans_ext(file), ".pdf"),
           docker = FALSE
         )
       }
)
