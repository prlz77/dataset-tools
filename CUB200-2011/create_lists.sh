paste images.txt image_class_labels.txt | awk '{print $2,($4-1)}' > all.txt
paste all.txt train_test_split.txt | awk '{if ($4 == 0)  print $1" "$2; }' > test.txt
paste all.txt train_test_split.txt | awk '{if ($4 == 1)  print $1" "$2; }' > train.txt
