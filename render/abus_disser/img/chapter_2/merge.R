library(magick)

# Читаем изображения
img_a <- image_read("./render/abus_disser/img/chapter_2/ch_2_fig_n5a.png")
img_b <- image_read("./render/abus_disser/img/chapter_2/ch_2_fig_n5b.png")

# Добавляем подписи
img_a_labeled <- image_annotate(img_a, "a", 
                                size = 50, 
                                color = "black",
                                weight = 700,
                                location = "+50+50",
                                boxcolor = "white")

img_b_labeled <- image_annotate(img_b, "б", 
                                size = 50, 
                                color = "black",
                                weight = 700,
                                location = "+50+50",
                                boxcolor = "white")

# Объединяем
combined_img <- image_append(c(img_a_labeled, img_b_labeled))

# Сохраняем
image_write(combined_img, 
            path = "./render/abus_disser/img/chapter_2/ch_2_fig_n5.png", 
            format = "png")



# Читаем изображения
img_a <- image_read("./render/abus_disser/img/chapter_2/ch_2_fig_n9a.png")
img_b <- image_read("./render/abus_disser/img/chapter_2/ch_2_fig_n9b.png")

# Добавляем подписи
img_a_labeled <- image_annotate(img_a, "a", 
                                size = 50, 
                                color = "black",
                                weight = 700,
                                location = "+50+50",
                                boxcolor = "white")

img_b_labeled <- image_annotate(img_b, "б", 
                                size = 50, 
                                color = "black",
                                weight = 700,
                                location = "+50+50",
                                boxcolor = "white")

# Объединяем
combined_img <- image_append(c(img_a_labeled, img_b_labeled))

# Сохраняем
image_write(combined_img, 
            path = "./render/abus_disser/img/chapter_2/ch_2_fig_n9.png", 
            format = "png")


