import subprocess 
import sys 
def run_llm(prompt): 
    return f"Ultron: Processing {prompt}" 
if __name__ == "__main__": 
    print(run_llm(sys.argv[1])) 
