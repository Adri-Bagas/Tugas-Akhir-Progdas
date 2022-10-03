function search1() {
    let val = document.getElementById('search1').value;

    location.replace("searchUser.php?search=" + val)
};

function search2() {
    let val = document.getElementById('search2').value;

    location.replace("searchMateri.php?search=" + val)
};

function search3() {
    let val = document.getElementById('search3').value;

    location.replace("searchDaily.php?search=" + val)
};