import random


def generate_workers():

    workers = []
    
    for num in range(1,401):
        #name
        #email
        #phone number
        #employment id
        #gender
        #employment level
        #salary
        #department
        #job title
        try:
            name =random.choice (["titi tijani","olayinka adeliyi","silas umunu"])
            email = name.replace(" ","")+"@gmail.com"
            phone= random.randint (10000000000,99999999999)
            id = num
            Gender = random.choice(["female","male"])
            Employment_level= None
            salary = random.randint(2000,100000)
            department = random.choice(["SALES","MARKETING","CUSTOMER EXPERIENCE","OPERATIONS"])
            job_title = random.choice(["sales manager","consultant","operations head"])
        except Exception as e:
            print(f"Error while appending random attributes {e}")
        
        worker = [id, name, email, phone, Gender, Employment_level, salary, department, job_title, salary]
        try:
            workers.append(worker)
        except Exception as e:
            print(f"Error whlile appending worker(num):(e)")    
            
                
def update_worker_details(workers):
    for worker in workers:
        try:
            if worker[-1]>10000 and worker[-1]<20000:
                worker[5]='A1'
            elif worker[-1]>7500 and worker[-1]<30000 and worker[4]=='female':
                worker[5]='A5-F'
        except Exception as e:
            print(f"Error while assigning employment level to worker(worker[0]):(e)")


def print_workers(workers):
    for worker in workers:
        print(f"Employee id:{worker[0]},\n\
            name:{worker[1]},\n\
            email:{worker[2]},\n\
            phone:{worker[3]},\n\
            gender:{worker[4]},\n\
            employment level:{worker[5]},\n\
            department:{worker[6]},\n\
            job title:{worker[7]},\n\
            salary:{worker[8]},n")
        
        def main():
            try:
                workers=generate_workers()
            except Exception as e:
              print(f"error while generatingworkers{e}")
            try:
                update_worker_details(workers)
            except Exception as e:
                print(f"error while printing workers:{e}")

    if __name__ ** "__main_":
                main()


