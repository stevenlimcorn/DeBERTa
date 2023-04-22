from datasets import load_dataset
dataset = load_dataset("Yaxin/SemEval2014Task4Raw")
text_train = "\n".join(dataset['train'].to_pandas()['text'])
text_valid = "\n".join(dataset['validation'].to_pandas()['text'])
text_test = "\n".join(dataset['test'].to_pandas()['text'])
with open("train_raw.txt", "w") as f:
    f.write(text_train)
with open("valid_raw.txt", "w") as f:
    f.write(text_valid)
with open("test_raw.txt", "w") as f:
    f.write(text_test)
