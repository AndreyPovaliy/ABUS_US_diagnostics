cd /Users/andreypovaliy/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus
touch main_Size_location_Abus.R


echo "source(\"~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R\")" >> main_Size_location_Abus.R
echo "library(ggplot2)" >> main_Size_location_Abus.R
echo "library(ggpie)" >> main_Size_location_Abus.R
echo "library(caret)" >> main_Size_location_Abus.R
echo "library(pROC)" >> main_Size_location_Abus.R


echo "FileName <- \"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/Текст_Size_location_Abus.txt\"" >> main_Size_location_Abus.R

echo "# 01_Аннотация ------------------------------------------------------------" >> main_Size_location_Abus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/01_Аннотация.R\")" >> main_Size_location_Abus.R

echo "# 02_Введение ------------------------------------------------------------" >> main_Size_location_Abus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/02_Введение.R\")" >> main_Size_location_Abus.R

echo "# 03_Цель ------------------------------------------------------------" >> main_Size_location_Abus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/03_Цель.R\")" >> main_Size_location_Abus.R

echo "# 04_Материалы ------------------------------------------------------------" >> main_Size_location_Abus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/04_Материалы.R\")" >> main_Size_location_Abus.R

echo "# 05_Результаты ------------------------------------------------------------" >> main_Size_location_Abus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/05_Результаты.R\")" >> main_Size_location_Abus.R

echo "# 06_Дисскуссия ------------------------------------------------------------" >> main_Size_location_Abus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/06_Дисскуссия.R\")" >> main_Size_location_Abus.R

echo "# 07_Выводы ------------------------------------------------------------" >> main_Size_location_Abus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/07_Выводы.R\")" >> main_Size_location_Abus.R

echo "source(\"~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R\")" >> main_Size_location_Abus.R

mkdir deconst
cd /Users/andreypovaliy/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/

mkdir text;
touch 01_Аннотация.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/text/01_Аннотация.txt\")" >> 01_Аннотация.R

touch 02_Введение.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/text/02_Введение.txt\")" >> 02_Введение.R

touch 03_Цель.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/text/03_Цель.txt\")" >> 03_Цель.R

touch 04_Материалы.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/text/04_Материалы.txt\")" >> 04_Материалы.R

touch 05_Результаты.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/text/05_Результаты.txt\")" >> 05_Результаты.R

touch 06_Дисскуссия.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/text/06_Дисскуссия.txt\")" >> 06_Дисскуссия.R

touch 07_Выводы.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/text/07_Выводы.txt\")" >> 07_Выводы.R


cd /Users/andreypovaliy/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Size_location_Abus/deconst/text/
touch 01_Аннотация.txt
touch 02_Введение.txt
touch 03_Цель.txt
touch 04_Материалы.txt
touch 05_Результаты.txt
touch 06_Дисскуссия.txt
touch 07_Выводы.txt