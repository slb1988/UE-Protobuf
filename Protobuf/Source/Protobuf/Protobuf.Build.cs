using UnrealBuildTool;
using System.IO;

public class Protobuf : ModuleRules {
	public Protobuf(ReadOnlyTargetRules Target) : base(Target) {
		Type = ModuleType.External;

        PublicDefinitions.Add("GOOGLE_PROTOBUF_NO_RTTI=1");
        PublicDefinitions.Add("GOOGLE_PROTOBUF_CMAKE_BUILD");

        PublicSystemIncludePaths.Add(Path.Combine(ModuleDirectory, "include"));

		if (Target.Platform == UnrealTargetPlatform.Win64) {
			PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "Windows", "libprotobuf.lib"));
		} else if (Target.Platform == UnrealTargetPlatform.IOS) {
			PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "IOS", "libprotobuf.a"));
		} else if (Target.Platform == UnrealTargetPlatform.Android) {
			PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "Android", "ARMv7", "libprotobuf.a"));
			PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "Android", "ARM64", "libprotobuf.a"));
			PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "Android", "x64", "libprotobuf.a"));
			PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "Android", "x86", "libprotobuf.a"));
		} else if (Target.Platform == UnrealTargetPlatform.Mac) {
			PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "Mac", "libprotobuf.a"));
		} else if (Target.Platform == UnrealTargetPlatform.Linux) {
			PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "Linux", "libprotobuf.a"));
		}
	}
}
