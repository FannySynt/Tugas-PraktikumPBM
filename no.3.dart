void main() {
  List<String> 
  nilai = ['90', '100', '98', '95'];
  Map<String, String> 
  mk = {
    nilai[0]: 'PBM',
    nilai[1]: 'DatMin',
    nilai[2]: 'BasDat',
    nilai[2]: 'MatDis',
  };
  Set<String> setNilai = {nilai[0], nilai[1], nilai[2], nilai[3]};

  print('Nilai Mata Kuliah BasDat : ' + nilai[2]);

  print('Nilai Matakuliah terbagus adalah');
  print(mk[nilai[1]]);

  print('List Nilai Mata Kuliah Semester 2:');
  print(setNilai);
}