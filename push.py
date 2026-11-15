import os
script_dir = os.path.dirname(os.path.abspath(__file__))
script_dir = os.path.join(script_dir,".git")
if True:
    script_dir = os.path.join(script_dir,"index.lock")
    
    print(script_dir)
    try:
        os.remove(script_dir)
        print("lock removed")
        pass
    except Exception as e:
        if type(e) is FileNotFoundError:
            print("removed already")
        elif type(e) is PermissionError:
            print("close ur ide. if its closed welp smth is locking it or os issue")
        else:
            print("welp u got a big issue")
        pass
    finally:
        print("executing stuff")
        os.chdir(os.path.dirname(os.path.abspath(__file__)))
        
        os.system("git add .")
        msg = input("Enter commit message: ")
        if msg == "":
            msg = "Automated by the Python Script"
        os.system(f"git commit -m \"{msg}\"")
        os.system("git push origin Chapter-1 --force ")
