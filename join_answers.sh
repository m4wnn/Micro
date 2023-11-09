# Verifies that the answers file exists and is empty.

if [ -f answers.md ]; then
    rm answers.md
fi

# Create the answers file.
touch answers.md

# Add the answers to the answers file.
for file in *.md
do
    echo "" >> answers.md
    cat $file >> answers.md
    echo "" >> answers.md
done

# Success message.
echo "answers.md created successfully at $(date +"%T") on $(date +"%D")"
