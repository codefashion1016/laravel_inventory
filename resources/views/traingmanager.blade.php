@extends('layouts.master')
@section('content')
    <?php if (Auth::user()->role_name == 'Super Admin' || Auth::user()->role_name == 'Admin'): ?>
        @section('menu')
            @extends('sidebar.dashboard')
        @endsection

        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>
            <div class="page-heading">
                <h1>Training File Manager</h1>
            </div>
            {{-- message --}}
            {!! Toastr::message() !!}
            <div class="container" style="margin-bottom:50px">
                <div class="row">
                    <div class="col-md-12" id="fm-main-block">
                        <div id="fm"></div>
                    </div>
                </div>
            </div>
            <!-- File manager -->

            <!-- PDF Viewer -->
            <div id="pdfViewerContainer" style="display: none;">
                <div id="pdfViewer"></div>
            </div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2023 &copy; Inder W</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://WOM IT">WOM IT</a></p>
                    </div>
                </div>
            </footer>
        </div>
        @push('scripts')
            <script>
                document.addEventListener('DOMContentLoaded', function() {
                    console.log('asdfasdfas');
                    document.getElementById('fm-main-block').setAttribute('style', 'height:' + window.innerHeight + 'px');
                    fm.$store.commit('fm/setFileCallBack', function(fileUrl) {
                        openPdf(fileUrl); // Call openPdf function when file is selected
                    });
                });

                function openPdf(pdfPath) {
                    // Show the PDF viewer container
                    document.getElementById('pdfViewerContainer').style.display = 'block';

                    // Use PDF.js to render the PDF
                    const pdfjsLib = window['pdfjs-dist/build/pdf'];
                    pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.11.338/pdf.worker.min.js';

                    const loadingTask = pdfjsLib.getDocument(pdfPath);
                    loadingTask.promise.then(function(pdf) {
                        // Fetch the first page
                        pdf.getPage(1).then(function(page) {
                            const scale = 1.5;
                            const viewport = page.getViewport({ scale: scale });

                            // Prepare canvas using PDF.js
                            const canvas = document.createElement('canvas');
                            const context = canvas.getContext('2d');
                            canvas.height = viewport.height;
                            canvas.width = viewport.width;

                            // Render PDF page into canvas context
                            const renderContext = {
                                canvasContext: context,
                                viewport: viewport
                            };
                            page.render(renderContext);

                            // Display the canvas in the viewer div
                            const viewerDiv = document.getElementById('pdfViewer');
                            viewerDiv.appendChild(canvas);
                        });
                    }, function(reason) {
                        console.error('Error: ' + reason);
                    });
                }
            </script>
            <script src="{{ asset('vendor/file-manager/js/file-manager.js') }}"></script>
        @endpush
    <?php else: ?>
        <div id="main1" style="padding: 6rem;">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>
            <div class="page-heading">
                <div class="page-title">
                    <div class="row">
                        <div class="col-12 col-md-6 order-md-1 order-last">
                            <h1>Training File Manager</h1>
                        </div>
                        <div class="col-12 col-md-6 order-md-2 order-first">
                            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ route('home') }}">Dashboard</a></li>
                                    <li class="breadcrumb-item active" aria-current="page"><a
                                            href="{{ route('logout') }}">Logout</a></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            {{-- message --}}
            {!! Toastr::message() !!}
            <div class="container" style="margin-bottom:50px">
                <div class="row">
                    <div class="col-md-12" id="fm-main-block">
                        <div id="fm"></div>
                    </div>
                </div>
            </div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2023 &copy; Inder W</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://WOM IT">WOM IT</a></p>
                    </div>
                </div>
            </footer>
        </div>
        @push('scripts')
            <script src="{{ asset('vendor/file-manager/js/file-manager.js') }}"></script>
        @endpush
        @push('scripts')
            <script>
                document.addEventListener('DOMContentLoaded', function() {
                    document.getElementById('fm-main-block').setAttribute('style', 'height:' + window.innerHeight + 'px');


                    fm.$store.commit('fm/setFileCallBack', function(fileUrl) {
                        openPdf(fileUrl); // Call openPdf function when file is selected
                    });
                });

                function openPdf(pdfPath) {
                    // Show the PDF viewer container
                    document.getElementById('pdfViewerContainer').style.display = 'block';

                    // Use PDF.js to render the PDF
                    const pdfjsLib = window['pdfjs-dist/build/pdf'];
                    pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.11.338/pdf.worker.min.js';

                    const loadingTask = pdfjsLib.getDocument(pdfPath);
                    loadingTask.promise.then(function(pdf) {
                        // Fetch the first page
                        pdf.getPage(1).then(function(page) {
                            const scale = 1.5;
                            const viewport = page.getViewport({ scale: scale });

                            // Prepare canvas using PDF.js
                            const canvas = document.createElement('canvas');
                            const context = canvas.getContext('2d');
                            canvas.height = viewport.height;
                            canvas.width = viewport.width;

                            // Render PDF page into canvas context
                            const renderContext = {
                                canvasContext: context,
                                viewport: viewport
                            };
                            page.render(renderContext);

                            // Display the canvas in the viewer div
                            const viewerDiv = document.getElementById('pdfViewer');
                            viewerDiv.appendChild(canvas);
                        });
                    }, function(reason) {
                        console.error('Error: ' + reason);
                    });
                }
            </script>
        @endpush
    @push('scripts')
    <script>
        window.onload = function(){
            
            var currentUrl = window.location.href;
            if (currentUrl.includes('/trainmanager')) {                
                document.getElementById('fm-main-block').setAttribute('style', 'height:' + window.innerHeight + 'px');
                fm.$store.commit('fm/setFileCallBack', function(fileUrl) {
                    openPdf(fileUrl); // Call openPdf function when file is selected
                });
                // function fff() {
                //     let items = document.querySelectorAll('div.fm-grid-item');
                    
                //     items.forEach((item) => {
                //         item.style.display = 'none';
                //     });
                    
                //     let element = document.querySelector('div.fm-grid-item[title="Daily Reports"]');
                //     if (element) {
                //         element.style.display = 'block';
                //     }
                //     if (document.getElementsByClassName("list-unstyled fm-tree-branch")[0]) {
                        
                //         tree = document.getElementsByClassName("list-unstyled fm-tree-branch")[0];
                        
                //         tree.getElementsByTagName("li")[0].style.display = 'none';
                //         tree.getElementsByTagName("li")[1].style.display = 'none';
                //         tree.getElementsByTagName("li")[2].style.display = 'none';
                        
                //         fm = document.getElementsByClassName("fm-table")[0];

                //         fm.getElementsByTagName("tr")[1].style.display = 'none';
                //         fm.getElementsByTagName("tr")[2].style.display = 'none';
                //         fm.getElementsByTagName("tr")[3].style.display = 'none';
                //     }
                // }

                // setInterval(fff, 1);

                setInterval(() => {
                  function getBreadcrumbPath() {
                    const breadcrumbItems = document.querySelectorAll('.breadcrumb.active-manager .breadcrumb-item');
                    const pathItems = [];

                    breadcrumbItems.forEach((item, index) => {
                        // Check if the item has the 'active' class
                        if (item.classList.contains('active')) {
                            // Do not include the active item
                            return;
                        }
                        // Get the text content from <span> inside <li>
                        const text = item.querySelector('span').textContent.trim();
                        if (text) {
                            pathItems.push(text);
                        }
                    });

                    // Add the active item at the end
                    const activeItem = document.querySelector('.breadcrumb.active-manager .breadcrumb-item.active');
                    if (activeItem) {
                        const activeText = activeItem.querySelector('span').textContent.trim();
                        if (activeText) {
                            pathItems.push(activeText);
                        }
                    }

                    return pathItems.join('/');
                  }
                  const path = getBreadcrumbPath();
                  console.log(path,"AAAAAAAAAAAA");
                    let fileList = document.querySelectorAll('div.fm-content-body > div.fm-table > table > tbody > tr.table-info');
                    
                    [...fileList].map((file) => {
                        console.log(file);
                        if(file.querySelector('td:nth-child(3)')){
                            let fileName = file.querySelector('td:nth-child(1)').innerText.trim(); // Adjusted to select the first <td>
                            let fileType = file.querySelector('td:nth-child(3)').innerText.trim(); // Adjusted to select the third <td>
                            if(fileType.toLowerCase() == 'pdf'){
                            let filepath = 'http://localhost:8000/storage/' + path + '/' + fileName + '.' + fileType;
        
                            file.addEventListener('dblclick', function() {
                                window.open(filepath, '_blank');
                            });}
                        }
                    })
                }, 1000);
            }

        }
    </script>
    @endpush
    
<?php endif; ?>
@endsection