OUTPUT_DIR := classes
SOURCE_DIR := src

MKDIR := mkdir -p
RM := rm -rf
AWK := awk
FIND := find

JAVAC := javac
JFLAGS := -sourcepath $(SOURCE_DIR) \
	  -d $(OUTPUT_DIR) \
	  -source 1.5


all_javas = all_javas.txt


.PHONY: compile
compile: $(all_javas)
	$(JAVAC) $(JFLAGS) @$<


.INTERMEDIATE: $(all_javas)
$(all_javas):
	$(FIND) $(SOURCE_DIR) -name '*.java' > $@
