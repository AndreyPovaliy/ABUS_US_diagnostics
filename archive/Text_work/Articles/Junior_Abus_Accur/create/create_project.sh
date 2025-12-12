cd /Users/andreypovaliy/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/
touch mainJunAbus.R


echo "source(\"~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R\")" >> mainJunAbus.R
echo "library(ggplot2)" >> mainJunAbus.R
echo "library(ggpie)" >> mainJunAbus.R
echo "library(caret)" >> mainJunAbus.R
echo "library(pROC)" >> mainJunAbus.R


echo "FileName <- \"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/textJunAbus.txt\"" >> mainJunAbus.R

echo "# 01_Аннотация ------------------------------------------------------------" >> mainJunAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/01_Аннотация.R\")" >> mainJunAbus.R

echo "# 02_Введение ------------------------------------------------------------" >> mainJunAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/02_Введение.R\")" >> mainJunAbus.R

echo "# 03_Цель ------------------------------------------------------------" >> mainJunAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/03_Цель.R\")" >> mainJunAbus.R

echo "# 04_Материалы ------------------------------------------------------------" >> mainJunAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/04_Материалы.R\")" >> mainJunAbus.R

echo "# 05_Результаты ------------------------------------------------------------" >> mainJunAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/05_Результаты.R\")" >> mainJunAbus.R

echo "# 06_Дисскуссия ------------------------------------------------------------" >> mainJunAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/06_Дисскуссия.R\")" >> mainJunAbus.R

echo "# 07_Выводы ------------------------------------------------------------" >> mainJunAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/07_Выводы.R\")" >> mainJunAbus.R

echo "source(\"~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R\")" >> mainJunAbus.R

mkdir deconst
cd /Users/andreypovaliy/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/

mkdir text;
touch 01_Аннотация.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/text/01_Аннотация.txt\")" >> 01_Аннотация.R

touch 02_Введение.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/text/02_Введение.txt\")" >> 02_Введение.R

touch 03_Цель.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/text/03_Цель.txt\")" >> 03_Цель.R

touch 04_Материалы.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/text/04_Материалы.txt\")" >> 04_Материалы.R

touch 05_Результаты.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/text/05_Результаты.txt\")" >> 05_Результаты.R

touch 06_Дисскуссия.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/text/06_Дисскуссия.txt\")" >> 06_Дисскуссия.R

touch 07_Выводы.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/text/07_Выводы.txt\")" >> 07_Выводы.R


cd /Users/andreypovaliy/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Junior_Abus_Accur/deconst/text/
touch 01_Аннотация.txt
touch 02_Введение.txt
touch 03_Цель.txt
touch 04_Материалы.txt
touch 05_Результаты.txt
touch 06_Дисскуссия.txt
touch 07_Выводы.txt