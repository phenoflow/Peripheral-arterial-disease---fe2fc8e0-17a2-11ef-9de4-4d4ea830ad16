cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  peripheral-arterial-disease-aorto---primary:
    run: peripheral-arterial-disease-aorto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  femorofemoral-peripheral-arterial-disease---primary:
    run: femorofemoral-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-aorto---primary/output
  peripheral-arterial-disease-anastom---primary:
    run: peripheral-arterial-disease-anastom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: femorofemoral-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-unspecified---primary:
    run: peripheral-arterial-disease-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-anastom---primary/output
  peripheral-arterial-disease-obliteran---primary:
    run: peripheral-arterial-disease-obliteran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-unspecified---primary/output
  profundoplasty-peripheral-arterial-disease---primary:
    run: profundoplasty-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-obliteran---primary/output
  peripheral-arterial-disease-prosth---primary:
    run: peripheral-arterial-disease-prosth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: profundoplasty-peripheral-arterial-disease---primary/output
  vascular-peripheral-arterial-disease---primary:
    run: vascular-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-prosth---primary/output
  peripheral-arterial-disease-aortoiliac---primary:
    run: peripheral-arterial-disease-aortoiliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: vascular-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-circulatory---primary:
    run: peripheral-arterial-disease-circulatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-aortoiliac---primary/output
  peripheral-arterial-disease-failure---primary:
    run: peripheral-arterial-disease-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-circulatory---primary/output
  peripheral-arterial-disease-atheroma---primary:
    run: peripheral-arterial-disease-atheroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-failure---primary/output
  diabetic-peripheral-arterial-disease---primary:
    run: diabetic-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-atheroma---primary/output
  peripheral-arterial-disease-nothnagel---primary:
    run: peripheral-arterial-disease-nothnagel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: diabetic-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-bifurc---primary:
    run: peripheral-arterial-disease-bifurc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-nothnagel---primary/output
  peripheral-arterial-disease-embolectomy---primary:
    run: peripheral-arterial-disease-embolectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-bifurc---primary/output
  angiopathy-peripheral-arterial-disease---primary:
    run: angiopathy-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-embolectomy---primary/output
  peripheral-arterial-disease-ischaemia---primary:
    run: peripheral-arterial-disease-ischaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: angiopathy-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-claudication---primary:
    run: peripheral-arterial-disease-claudication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-ischaemia---primary/output
  peripheral-arterial-disease-acrocyanosis---primary:
    run: peripheral-arterial-disease-acrocyanosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-claudication---primary/output
  peripheral-arterial-disease-acroparaesthesia---primary:
    run: peripheral-arterial-disease-acroparaesthesia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-acrocyanosis---primary/output
  peripheral-arterial-disease-erythromelalgia---primary:
    run: peripheral-arterial-disease-erythromelalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-acroparaesthesia---primary/output
  peripheral-arterial-disease-gangrene---primary:
    run: peripheral-arterial-disease-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-erythromelalgia---primary/output
  popliteal-peripheral-arterial-disease---primary:
    run: popliteal-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-gangrene---primary/output
  peripheral-arterial-disease-graft---primary:
    run: peripheral-arterial-disease-graft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: popliteal-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-ulcer---primary:
    run: peripheral-arterial-disease-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-graft---primary/output
  peripheral-arterial-disease-erythrocyanosis---primary:
    run: peripheral-arterial-disease-erythrocyanosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-ulcer---primary/output
  peripheral-arterial-disease-thrombectomy---primary:
    run: peripheral-arterial-disease-thrombectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-erythrocyanosis---primary/output
  peripheral-arterial-disease-revision---primary:
    run: peripheral-arterial-disease-revision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-thrombectomy---primary/output
  peripheral-arterial-disease-shunt---primary:
    run: peripheral-arterial-disease-shunt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-revision---primary/output
  peripheral-arterial-disease-thrombosis---primary:
    run: peripheral-arterial-disease-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-shunt---primary/output
  peripheral-arterial-disease-buerger---primary:
    run: peripheral-arterial-disease-buerger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-thrombosis---primary/output
  peripheral-arterial-disease-reconstruction---primary:
    run: peripheral-arterial-disease-reconstruction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-buerger---primary/output
  peripheral-arterial-disease-repair---primary:
    run: peripheral-arterial-disease-repair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-reconstruction---primary/output
  peripheral-arterial-disease-emerg---primary:
    run: peripheral-arterial-disease-emerg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-repair---primary/output
  peripheral-arterial-disease-embolisation---primary:
    run: peripheral-arterial-disease-embolisation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-emerg---primary/output
  angioplasty-peripheral-arterial-disease---primary:
    run: angioplasty-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-embolisation---primary/output
  peripheral-arterial-disease-patch---primary:
    run: peripheral-arterial-disease-patch---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: angioplasty-peripheral-arterial-disease---primary/output
  lower-peripheral-arterial-disease---primary:
    run: lower-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-patch---primary/output
  peripheral-arterial-disease-operation---primary:
    run: peripheral-arterial-disease-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: lower-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-endarterectomy---primary:
    run: peripheral-arterial-disease-endarterectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-operation---primary/output
  peripheral-arterial-disease-involving---primary:
    run: peripheral-arterial-disease-involving---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-endarterectomy---primary/output
  peripheral-arterial-disease-procedure---primary:
    run: peripheral-arterial-disease-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-involving---primary/output
  aortic-peripheral-arterial-disease---primary:
    run: aortic-peripheral-arterial-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-procedure---primary/output
  peripheral-arterial-disease-consultation---primary:
    run: peripheral-arterial-disease-consultation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: aortic-peripheral-arterial-disease---primary/output
  peripheral-arterial-disease-extremity---primary:
    run: peripheral-arterial-disease-extremity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-consultation---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: peripheral-arterial-disease-extremity---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
