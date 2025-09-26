document.getElementById('select').addEventListener('change', function() {
    var selectedValue = this.value;
    var inputContainers = document.querySelectorAll('.input-container');

    inputContainers.forEach(function(container) { container.style.display = 'none'; });

    if (selectedValue)  {document.getElementById(selectedValue).style.display = 'block'; }
});

$("input[type='file']").on('change', function() {
    var fileInput = $(this);
    var fileName = fileInput.val().split('\\').pop();

    if (fileInput.attr('id') === 'file1') {
        $(".upload-name1").val(fileName);
    } else if (fileInput.attr('id') === 'file2') {
        $(".upload-name2").val(fileName);
    } else if (fileInput.attr('id') === 'file3') {
        $(".upload-name3").val(fileName);
    } else if (fileInput.attr('id') === 'file4') {
        $(".upload-name4").val(fileName);
    } else if (fileInput.attr('id') === 'file5') {
        $(".upload-name5").val(fileName);
    }
});

function registerCheck() {
    if(f.name.value === "") {
        alert("이름을 입력해주세요.")
        f.name.focus()
        return
    }

    if(f.img1.files.length === 0 && f.img1_o.value === "") {
        alert("대표 이미지를 선택해주세요.")
        return
    }

    if(f.content.value === "") {
        alert("상품 설명을 입력해주세요.")
        f.content.focus()
        return
    }

    if(f.price.value === "") {
        alert("판매가를 입력해주세요.")
        f.price.focus()
        return
    }

    if(f.cnt.value === "") {
        alert("재고를 입력해주세요.")
        f.cnt.focus()
        return
    }

    if(f.select.value === "none") {
        alert("상세 선택을 해주세요.")
        return
    }

    if(f.select.value === "cpu") {
        if(f.cpu_select.value === "none") {
            alert("제조사를 선택해주세요.")
            return
        }
        if(f.cpu_type_select.value === "none") {
            alert("CPU 종류를 선택해주세요.")
            return
        }
        if(f.cpu_socket_select.value === "none") {
            alert("소켓을 선택해주세요.")
            return
        }
        if(f.cpu_core_select.value === "none") {
            alert("코어 수를 선택해주세요.")
            return
        }
        if(f.cpu_thread_select.value === "none") {
            alert("스레드 수를 선택해주세요.")
            return
        }
    } else if(f.select.value === "motherboard") {
        if(f.mb_select.value === "none") {
            alert("제조사를 선택해주세요.")
            return
        }
        if(f.mb_cpu_socket_select.value === "none") {
            alert("CPU 소켓을 선택해주세요.")
            return
        }
        if(f.mb_detailed_chipset_select.value === "none") {
            alert("세부 칩셋을 선택해주세요.")
            return
        }
        if(f.mb_form_factor_select.value === "none") {
            alert("폼팩터를 선택해주세요.")
            return
        }
        if(f.mb_memory_type_select.value === "none") {
            alert("메모리 종류를 선택해주세요.")
            return
        }
        if(f.mb_memory_slots_select.value === "none") {
            alert("메모리 슬롯 갯수를 선택해주세요.")
            return
        }
        if(f.mb_m2_select.value === "none") {
            alert("M.2 갯수를 선택해주세요.")
            return
        }
    } else if(f.select.value === "cooler") {
        if(f.c_select.value === "none") {
            alert("제조사를 선택해주세요.")
            return
        }
        if(f.c_cooling_system_select.value === "none") {
            alert("냉각 방식을 선택해주세요.")
            return
        }
        if(f.c_height_select.value === "") {
            alert("높이를 선택해주세요.")
            return
        }
        if(f.c_radiator_select.value === "none") {
            alert("라디에이터 열 갯수를 선택해주세요.")
            return
        }
        if(f.c_fan_size_select.value === "none") {
            alert("팬 크기를 선택해주세요.")
            return
        }
    } else if(f.select.value === "ram") {
        if(f.ram_select.value === "none") {
            alert("제조사를 선택해주세요.")
            return
        }
        if(f.ram_device_select.value === "none") {
            alert("사용 장치를 선택해주세요.")
            return
        }
        if(f.ram_classification_select.value === "none") {
            alert("제품 분류를 선택해주세요.")
            return
        }
        if(f.ram_capacity_select.value === "none") {
            alert("메모리 용량을 선택해주세요.")
            return
        }
        if(f.ram_motion_clock_select.value === "none") {
            alert("동작 클럭을 선택해주세요.")
            return
        }
    } else if(f.select.value === "graphiccard") {
        if(f.gc_select.value === "none") {
            alert("제조사를 선택해주세요.")
            return
        }
        if(f.gc_chipset_select.value === "none") {
            alert("칩셋을 선택해주세요.")
            return
        }
        if(f.gc_detailed_chipset_select.value === "none") {
            alert("세부 칩셋을 선택해주세요.")
            return
        }
        if(f.gc_memory_capacity_select.value === "none") {
            alert("메모리 용량을 선택해주세요.")
            return
        }
        if(f.gc_fan_number_select.value === "none") {
            alert("팬 갯수을 선택해주세요.")
            return
        }
    }

    f.submit()
}
