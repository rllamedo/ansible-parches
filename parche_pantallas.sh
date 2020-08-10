- name: PARCHE - Pantallas desconectadas y giro
  hosts: all
  gather_facts: no
  tasks:
    - name: Ejecutar script instalador parche
      shell: wget -O - http://10.44.36.65/scripts/udev/install_patch_screens.sh | bash
      register: resultado
      failed_when: >
        ("# Error en script" in resultado.stdout)
