ClearAll["Global`*"]

audioFile = Import[FileNames["*.mp3", NotebookDirectory[]][[1]]];

plotSpectrogram = Spectrogram[audioFile,
   ImageSize -> 1000,
   PlotRange -> Automatic,
   AspectRatio -> .5,
   PlotTheme -> "Scientific",
   ColorFunction -> "RustTones",
   ColorFunctionScaling -> True,
   FrameTicks -> None];

exportFileName = NotebookDirectory[] <> "spectrogram.png";

Export[exportFileName, plotSpectrogram];
