function productCheck() {
  if (document.frm.name.value.length == 0) {
    alert("��ǰ����  ���ּ���.");
    frm.name.focus();
    return false;
  }
  if (document.frm.price.value.length == 0) {
    alert("������ ���ּ���");
    frm.price.focus();
    return false;
  }
  if (isNaN(document.frm.price.value)) {
    alert("���ڸ� �Է��ؾ� �մϴ�");
    frm.price.focus();
    return false;
  }
  return true;
}
