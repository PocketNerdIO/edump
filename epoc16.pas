{$mode objfpc}{$H+}{$J-}
unit epoc16;

interface

type
  TAddFile = record
    Offset: UInt16;
    Length: UInt16;
  end;

  TEpoc16ImgHeader = record
    Signature: String[16]; // unsigned char
    ImageVersion: UInt16; // unsigned short int
    HeaderSizeBytes: UInt16; // unsigned short int
    CodeParas: UInt16; // unsigned short int
    InitialIP: UInt16; // unsigned short int
    StackParas: UInt16; // unsigned short int
    DataParas: UInt16; // unsigned short int
    HeapParas: UInt16; // unsigned short int
    InitializedData: UInt16; // unsigned short int
    CodeCheckSum: UInt16; // unsigned short int
    DataCheckSum: UInt16; // unsigned short int
    CodeVersion: UInt16; // unsigned short int
    Priority: UInt16; // unsigned short int
    AddFile: Array[1 .. 4] of TAddFile; // ADDFILE
    DylCount: UInt16; // unsigned short int
    DylTableOffset: UInt32; // unsigned long int
    Spare: UInt8; // unsigned short int
  end;

implementation

end.
