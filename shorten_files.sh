# rm -rf shortened_appraisal_files
unzip original_data/Appraisal_Roll_History_1990.zip -d shortened_appraisal_files
find shortened_appraisal_files -name "*.TXT" -exec sed -i.full 100q {} \;
find shortened_appraisal_files -name "*.TXT.full" -exec rm {} \;
zip -r shortened_appraisal_files.zip shortened_appraisal_files
