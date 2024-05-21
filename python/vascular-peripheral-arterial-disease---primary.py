# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"G73..00","system":"readv2"},{"code":"14NB.00","system":"readv2"},{"code":"G73z.00","system":"readv2"},{"code":"G73zz00","system":"readv2"},{"code":"24327","system":"readv2"},{"code":"6308","system":"readv2"},{"code":"15272","system":"readv2"},{"code":"72632","system":"readv2"},{"code":"9561","system":"readv2"},{"code":"5702","system":"readv2"},{"code":"23871","system":"readv2"},{"code":"6853","system":"readv2"},{"code":"34638","system":"readv2"},{"code":"54212","system":"readv2"},{"code":"4325","system":"readv2"},{"code":"4317","system":"readv2"},{"code":"23497","system":"readv2"},{"code":"37806","system":"readv2"},{"code":"6827","system":"readv2"},{"code":"64446","system":"readv2"},{"code":"70448","system":"readv2"},{"code":"65025","system":"readv2"},{"code":"5650","system":"readv2"},{"code":"11624","system":"readv2"},{"code":"73961","system":"readv2"},{"code":"22834","system":"readv2"},{"code":"98174","system":"readv2"},{"code":"53634","system":"readv2"},{"code":"68698","system":"readv2"},{"code":"5943","system":"readv2"},{"code":"60699","system":"readv2"},{"code":"3530","system":"readv2"},{"code":"8801","system":"readv2"},{"code":"67401","system":"readv2"},{"code":"1826","system":"readv2"},{"code":"38907","system":"readv2"},{"code":"10500","system":"readv2"},{"code":"69124","system":"readv2"},{"code":"35399","system":"readv2"},{"code":"9204","system":"readv2"},{"code":"1517","system":"readv2"},{"code":"5414","system":"readv2"},{"code":"25954","system":"readv2"},{"code":"34152","system":"readv2"},{"code":"16260","system":"readv2"},{"code":"14796","system":"readv2"},{"code":"15302","system":"readv2"},{"code":"12735","system":"readv2"},{"code":"54899","system":"readv2"},{"code":"19155","system":"readv2"},{"code":"14797","system":"readv2"},{"code":"3715","system":"readv2"},{"code":"63357","system":"readv2"},{"code":"31053","system":"readv2"},{"code":"2760","system":"readv2"},{"code":"93468","system":"readv2"},{"code":"56803","system":"readv2"},{"code":"30484","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-arterial-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["vascular-peripheral-arterial-disease---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["vascular-peripheral-arterial-disease---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["vascular-peripheral-arterial-disease---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
