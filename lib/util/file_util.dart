import 'dart:io';
import 'dart:ui';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class FileUtil{


  static Future<String> createFolderInAppDocDir(String folderName) async {

    //Get this App Document Directory
    final Directory _appDocDir = await getApplicationDocumentsDirectory();
    //App Document Directory + folder name
    final Directory _appDocDirFolder =  Directory('${_appDocDir.path}/$folderName/');

    if(await _appDocDirFolder.exists()){ //if folder already exists return path
      return _appDocDirFolder.path;
    }else{//if folder not exists create folder and then return its path
      final Directory _appDocDirNewFolder=await _appDocDirFolder.create(recursive: true);
      return _appDocDirNewFolder.path;
    }
  }
  static Future<String>  getRootDirPath() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static  Future<File> localFile(String  file) async {
    final path = await getRootDirPath;
    print('path ${path}');
    return File('$path/'+file);
  }

  static  Future<int> deleteFile(String  fileName) async {
    try {
      File file =  localFile(fileName) as File;
      await file.delete();
    } catch (e) {
      return 0;
    }
  }

  static  Future<int> renameFile(String  oldFile, String rename ) async {
    try {
      File file =  localFile(oldFile) as File;
      await file.renameSync(rename);
    } catch (e) {
      return 0;
    }
  }



  /*Image loadImageFromFile(String path) {
   File file = new File(path);
   Image img = Image.file(file);
 }
*/
  void storeImageToFile(String path,String url) async {
    /*var response = await get(url);
    File file = new File(path);
    file.create(recursive: true).then((val) async {
      if (await val.exists()) {
        await file.writeAsBytesSync(response.bodyBytes);
      }
    });


    File _takenImage;
    Future<void> _takePicture() async {
      final imageFile = await ImagePicker.pickImage(
        source: ImageSource.gallery,
      );
      if (imageFile == null) {
        return;
      }
      setState(() {
        _takenImage = imageFile;
      });
      final appDir = await pPath.getApplicationDocumentsDirectory();
      final fileName = path.basename(imageFile.path);
      final savedImage = await imageFile.copy('${appDir.path}/$fileName');

      var _imageToStore = Picture(picName: savedImage);
      _storeImage() {
        Provider.of<Pictures>(context, listen: false).storeImage(_imageToStore);
      }

      _storeImage();

    }
*/
  }
  }

