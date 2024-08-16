<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use App\Models\Drawing;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class DrawingController extends Controller
{
    //
    public function index()
    {
        $drawings = Drawing::all();
        return view('drawing.category', compact('drawings'));
    }
    public function create()
    {
        return view('drawing.create');
    }

    public function store(Request $request)
    {   
                      
        $request->validate([
            'file' => 'required|mimes:pdf|max:10240', // Adjust max size as needed
        ]);


        $uploadedFile = $request->file('file');
        $file_name = $uploadedFile->getClientOriginalName();
        // dd($file_name);
        $pdfPath = $this->getPdfPath();

        // Save the file to the storage folder
        $uploadedFile->storeAs('public/', $pdfPath);
        // dd($pdfPath);
        // dd($request);
        Drawing::create([
            'username' => Auth::user()->name,
            'file_name'=> $file_name,
            'title'=> $request->title,
            'description'=>$request->description,
            'pdf_path' => $pdfPath,
            'created_at'     => now()->format('Y-m-d H:i:s')
        ]);
  
        Toastr::success('New Drawing created successfully :)','Success');
        return redirect()->route('drawing_lists');
    }
    public function uploadPdf(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:pdf|max:10240', // Adjust max size as needed
        ]);
        // Get the uploaded file
        $uploadedFile = $request->file('file');
        $file_name = $uploadedFile->getClientOriginalName();
        // dd($file_name);
        $pdfPath = $this->getPdfPath();

        // Save the file to the storage folder
        $uploadedFile->storeAs('public/', $pdfPath);
        // dd($pdfPath);
    
        // Update the database with the file path
        Drawing::create([
            'username' => Auth::user()->name,
            'file_name'=> $file_name,
            'pdf_path' => $pdfPath,
            'created_at'     => now()->format('Y-m-d H:i:s')
        ]);
  
    
        return redirect()->back()->with('success', 'Drawings imported successfully!');
    }
    public function downloadPdf($id)
    {
        $drawing = Drawing::find($id);

        if (!$drawing) {
            abort(404);
        }

        // Construct the full path to the PDF file
        $pdfPath = storage_path('app/public/' . $drawing->pdf_path);

        // Check if the file exists
        if (file_exists($pdfPath)) {
            // Provide a custom name for the downloaded file if needed
            $FileName = $drawing->file_name;

            // Return the file as a response for download
            return response()->file($pdfPath, [
                'Content-Type' => 'application/pdf',
                'Content-Disposition' => 'inline; filename="' . $FileName . '"',
            ]);
        }

        // Handle case when the file does not exist
        abort(404, 'PDF not found');
    }
    public function viewPdf($pdfId)
    {
        // Fetch the PDF path or identifier based on $pdfId
        $pdfPath = $this->getPdfPath($pdfId);
        // dd($pdfPath);
        // Check if the PDF file exists
        if (Storage::exists($pdfPath)) {
            // Get the absolute path to the PDF file
            $pdfFilePath = Storage::path($pdfPath);

            // Return the PDF file as a response
            return response()->file($pdfFilePath, [
                'Content-Type' => 'application/pdf',
                'Content-Disposition' => 'inline; filename="' . basename($pdfFilePath) . '"',
            ]);
        }

        // Handle case when the PDF file does not exist
        abort(404, 'PDF not found');
    }

    // Method to get the PDF path or identifier based on $pdfId
    private function getPdfPath($pdfId = null)
    {
        if ($pdfId !== null) {
            // If $pdfId is provided, use it to generate the path
            return 'pdfs/mypdf_' . $pdfId . '.pdf';
        }

        // If $pdfId is not provided, generate a random string for a new PDF
        $randomString = Str::random(32);

        return 'pdfs/mypdf_' . $randomString . '.pdf';
       
    }
    public function delete($id)
    {
        $delete = Drawing::find($id);
        $delete->delete();
        Toastr::success('Drawing deleted successfully :)','Success');
        return redirect()->route('drawing_lists');
    }

}
