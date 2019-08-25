import Foundation
import ARKit

class Lamp: VirtualObject {

	override init() {
		super.init(modelName: "eyeball", fileExtension: "scn", thumbImageFilename: "lamp", title: "eyeball")
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
