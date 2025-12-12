library(bibtex)
library(dplyr)

# Читаем bib файл
bib_data <- read.bib("./render/abus_disser/references.bib")

# Создаем функцию для определения языка по имени автора
detect_language <- function(authors) {
  if (is.null(authors)) return("unknown")
  
  # Проверяем, содержит ли имя кириллические символы
  author_str <- paste(as.character(authors), collapse = " ")
  if (grepl("[А-Яа-яЁё]", author_str)) {
    return("cyrillic")
  } else {
    return("latin")
  }
}

# Добавляем поле для сортировки
for (i in seq_along(bib_data)) {
  lang <- detect_language(bib_data[[i]]$author)
  bib_data[[i]]$sortkey <- paste0(ifelse(lang == "cyrillic", "01_", "02_"), 
                                  formatC(i, width = 4, flag = "0"))
}

# Сохраняем обратно
write.bib(bib_data, file = "./render/abus_disser/references_sorted.bib")