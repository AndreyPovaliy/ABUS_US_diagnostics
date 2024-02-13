cd /Users/andreypovaliy/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/
touch main_AlgoAbus.R


echo "source(\"~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R\")" >> main_AlgoAbus.R
echo "library(ggplot2)" >> main_AlgoAbus.R
echo "library(ggpie)" >> main_AlgoAbus.R
echo "library(caret)" >> main_AlgoAbus.R
echo "library(pROC)" >> main_AlgoAbus.R


echo "FileName <- \"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/Текст_AlgoAbus.txt\"" >> main_AlgoAbus.R

echo "# 01_Аннотация ------------------------------------------------------------" >> main_AlgoAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/01_Аннотация.R\")" >> main_AlgoAbus.R

echo "# 02_Введение ------------------------------------------------------------" >> main_AlgoAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/02_Введение.R\")" >> main_AlgoAbus.R

echo "# 03_Цель ------------------------------------------------------------" >> main_AlgoAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/03_Цель.R\")" >> main_AlgoAbus.R

echo "# 04_Материалы ------------------------------------------------------------" >> main_AlgoAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/04_Материалы.R\")" >> main_AlgoAbus.R

echo "# 05_Результаты ------------------------------------------------------------" >> main_AlgoAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/05_Результаты.R\")" >> main_AlgoAbus.R

echo "# 06_Дисскуссия ------------------------------------------------------------" >> main_AlgoAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/06_Дисскуссия.R\")" >> main_AlgoAbus.R

echo "# 07_Выводы ------------------------------------------------------------" >> main_AlgoAbus.R
echo "source(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/07_Выводы.R\")" >> main_AlgoAbus.R

echo "source(\"~/Documents/Science/ABUS_US_diagnostics/XLXS_ver1/00_preprocessing_data/05_real_script.R\")" >> main_AlgoAbus.R

mkdir deconst
cd /Users/andreypovaliy/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/

mkdir text;
touch 01_Аннотация.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/text/01_Аннотация.txt\")" >> 01_Аннотация.R

touch 02_Введение.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/text/02_Введение.txt\")" >> 02_Введение.R

touch 03_Цель.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/text/03_Цель.txt\")" >> 03_Цель.R

touch 04_Материалы.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/text/04_Материалы.txt\")" >> 04_Материалы.R

touch 05_Результаты.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/text/05_Результаты.txt\")" >> 05_Результаты.R

touch 06_Дисскуссия.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/text/06_Дисскуссия.txt\")" >> 06_Дисскуссия.R

touch 07_Выводы.R
echo "escribir_rT(\"~/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/text/07_Выводы.txt\")" >> 07_Выводы.R


cd /Users/andreypovaliy/Documents/Science/ABUS_US_diagnostics/Text_work/Articles/Algorithm_abus/deconst/text/
touch 01_Аннотация.txt
touch 02_Введение.txt
touch 03_Цель.txt
touch 04_Материалы.txt
touch 05_Результаты.txt
touch 06_Дисскуссия.txt
touch 07_Выводы.txt