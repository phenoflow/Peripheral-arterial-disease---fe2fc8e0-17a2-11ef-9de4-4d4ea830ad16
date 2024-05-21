# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"66869","system":"readv2"},{"code":"39437","system":"readv2"},{"code":"52869","system":"readv2"},{"code":"6256","system":"readv2"},{"code":"6617","system":"readv2"},{"code":"60693","system":"readv2"},{"code":"36136","system":"readv2"},{"code":"28119","system":"readv2"},{"code":"73822","system":"readv2"},{"code":"64798","system":"readv2"},{"code":"2066","system":"readv2"},{"code":"22016","system":"readv2"},{"code":"39776","system":"readv2"},{"code":"48755","system":"readv2"},{"code":"54071","system":"readv2"},{"code":"24677","system":"readv2"},{"code":"49273","system":"readv2"},{"code":"28777","system":"readv2"},{"code":"61974","system":"readv2"},{"code":"51331","system":"readv2"},{"code":"42645","system":"readv2"},{"code":"65692","system":"readv2"},{"code":"97606","system":"readv2"},{"code":"18038","system":"readv2"},{"code":"31338","system":"readv2"},{"code":"57793","system":"readv2"},{"code":"41823","system":"readv2"},{"code":"66930","system":"readv2"},{"code":"63368","system":"readv2"},{"code":"96809","system":"readv2"},{"code":"63605","system":"readv2"},{"code":"18030","system":"readv2"},{"code":"44250","system":"readv2"},{"code":"72491","system":"readv2"},{"code":"21927","system":"readv2"},{"code":"24229","system":"readv2"},{"code":"24097","system":"readv2"},{"code":"81445","system":"readv2"},{"code":"48700","system":"readv2"},{"code":"59602","system":"readv2"},{"code":"42640","system":"readv2"},{"code":"60465","system":"readv2"},{"code":"64555","system":"readv2"},{"code":"42465","system":"readv2"},{"code":"52289","system":"readv2"},{"code":"29112","system":"readv2"},{"code":"34153","system":"readv2"},{"code":"51211","system":"readv2"},{"code":"45428","system":"readv2"},{"code":"63238","system":"readv2"},{"code":"2761","system":"readv2"},{"code":"36443","system":"readv2"},{"code":"28616","system":"readv2"},{"code":"36952","system":"readv2"},{"code":"67083","system":"readv2"},{"code":"43651","system":"readv2"},{"code":"9099","system":"readv2"},{"code":"32492","system":"readv2"},{"code":"53580","system":"readv2"},{"code":"55554","system":"readv2"},{"code":"65286","system":"readv2"},{"code":"47835","system":"readv2"},{"code":"27580","system":"readv2"},{"code":"28894","system":"readv2"},{"code":"17336","system":"readv2"},{"code":"52357","system":"readv2"},{"code":"68320","system":"readv2"},{"code":"63280","system":"readv2"},{"code":"66437","system":"readv2"},{"code":"39877","system":"readv2"},{"code":"6356","system":"readv2"},{"code":"66804","system":"readv2"},{"code":"23352","system":"readv2"},{"code":"12331","system":"readv2"},{"code":"20657","system":"readv2"},{"code":"38921","system":"readv2"},{"code":"49319","system":"readv2"},{"code":"18060","system":"readv2"},{"code":"71041","system":"readv2"},{"code":"62775","system":"readv2"},{"code":"33555","system":"readv2"},{"code":"18816","system":"readv2"},{"code":"37787","system":"readv2"},{"code":"95573","system":"readv2"},{"code":"7111","system":"readv2"},{"code":"40732","system":"readv2"},{"code":"55877","system":"readv2"},{"code":"61256","system":"readv2"},{"code":"61255","system":"readv2"},{"code":"48939","system":"readv2"},{"code":"55825","system":"readv2"},{"code":"15532","system":"readv2"},{"code":"10827","system":"readv2"},{"code":"24692","system":"readv2"},{"code":"28030","system":"readv2"},{"code":"50894","system":"readv2"},{"code":"66820","system":"readv2"},{"code":"28125","system":"readv2"},{"code":"3778","system":"readv2"},{"code":"28166","system":"readv2"},{"code":"14895","system":"readv2"},{"code":"67982","system":"readv2"},{"code":"62818","system":"readv2"},{"code":"68141","system":"readv2"},{"code":"40397","system":"readv2"},{"code":"65669","system":"readv2"},{"code":"47562","system":"readv2"},{"code":"36065","system":"readv2"},{"code":"52342","system":"readv2"},{"code":"34037","system":"readv2"},{"code":"40619","system":"readv2"},{"code":"69519","system":"readv2"},{"code":"55402","system":"readv2"},{"code":"40302","system":"readv2"},{"code":"9119","system":"readv2"},{"code":"16363","system":"readv2"},{"code":"72448","system":"readv2"},{"code":"44430","system":"readv2"},{"code":"60212","system":"readv2"},{"code":"70922","system":"readv2"},{"code":"96255","system":"readv2"},{"code":"63396","system":"readv2"},{"code":"68412","system":"readv2"},{"code":"43648","system":"readv2"},{"code":"66879","system":"readv2"},{"code":"11766","system":"readv2"},{"code":"41768","system":"readv2"},{"code":"67818","system":"readv2"},{"code":"66917","system":"readv2"},{"code":"20892","system":"readv2"},{"code":"42115","system":"readv2"},{"code":"53675","system":"readv2"},{"code":"52695","system":"readv2"},{"code":"30989","system":"readv2"},{"code":"39039","system":"readv2"},{"code":"62866","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-arterial-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peripheral-arterial-disease-procedure---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peripheral-arterial-disease-procedure---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peripheral-arterial-disease-procedure---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)