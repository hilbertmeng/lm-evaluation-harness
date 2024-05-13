import collections

import datasets
from datasets import Dataset


class each:
    def __init__(self, f):
        self.f = f

    def __rrshift__(self, other):
        return list(map(self.f, other))

def process_docs(dataset: datasets.Dataset) -> datasets.Dataset:
    r = collections.defaultdict(list)
    for item in dataset:
        r[item["article"]].append(item)
    res = list(
        r.values()
        >> each(
            lambda x: {
                "article": x[0]["article"],
                "problems": x
                >> each(
                    lambda y: {
                        "question": y["question"],
                        "answer": y["answer"],
                        "options": y["options"],
                    }
                ),
            }
        )
    )

    new_dataset = {}
    for key in ['article', 'problems']:
        if key=='problems':
            new_dataset[key] = [ str(row[key]) for row in res]
        else:
            new_dataset[key] = [ row[key] for row in res] 
    
    return Dataset.from_dict(new_dataset)
