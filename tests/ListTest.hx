import tink.pure.List;

import tink.unit.Assert.assert;

@:asserts
class ListTest {
  public function new() {}
	
  public function prepend() {
    var list = List.fromArray([1,2]);
    list = list.prepend(0);
    var i = 0;
    for(item in list) asserts.assert(item == i++);
    return asserts.done();
  }
  
  public function append() {
    var list = List.fromArray([0,1]);
    list = list.append(2);
    var i = 0;
    for(item in list) asserts.assert(item == i++);
    return asserts.done();
  }
  
  public function single() {
    var list = List.single(1);
    return assert(list.length == 1);
  }
}