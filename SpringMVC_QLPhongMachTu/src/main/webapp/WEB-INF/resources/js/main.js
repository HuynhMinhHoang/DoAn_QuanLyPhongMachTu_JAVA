function xoaTaiKhoan(path) {
    if (confirm("Bạn chắc chắn muốn xóa Tài Khoản này không?") === true) {
        fetch(path, {
            method: "delete"
        }).then(res => {
            if (res.status === 204)
                location.reload();
            else
                alert("Xóa không thành công!");
        })
    }

}

function xoaBillThuoc(path) {
    if (confirm("Bạn chắc chắn muốn xóa Thuốc này không?") === true) {
        fetch(path, {
            method: "delete"
        }).then(res => {
            if (res.status === 204)
                location.reload();
            else
                alert("Xóa không thành công!");
        })
    }

}

function xoaLsPhieuDky(path) {
    if (confirm("Bạn chắc chắn muốn Hủy lịch đăng ký không?") === true) {
        fetch(path, {
            method: "delete"
        }).then(res => {
            if (res.status === 204)
                location.reload();
            else
                alert("Hủy không thành công!");
        })
    }

}


function xoaLichTruc(path) {
    if (confirm("Bạn chắc chắn muốn xóa lịch trực này không?") === true) {
        fetch(path, {
            method: "delete"
        }).then(res => {
            if (res.status === 204)
                location.reload();
            else
                alert("Xóa không thành công!");
        })
    }

}




function formatCurrency(number) {
    return new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'VND'}).formatToParts(number)
            .filter(part => part.type !== 'currency').map(part => part.value).join('');
}

document.addEventListener('DOMContentLoaded', function () {
    const formatTienCells = document.querySelectorAll('.formatTien');

    formatTienCells.forEach(function (cell) {
        const originalValue = parseFloat(cell.textContent);
        cell.textContent = formatCurrency(originalValue);
    });

});

function formatCurrencyWithoutSymbol(number) {
    return new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'VND'}).formatToParts(number)
            .filter(part => part.type !== 'currency').map(part => part.value).join('');
}

document.addEventListener('DOMContentLoaded', function () {
    const tienKhamInput = document.getElementById('tienKham');
    const originalValue = parseFloat(tienKhamInput.placeholder);
    tienKhamInput.placeholder = formatCurrencyWithoutSymbol(originalValue);
});





