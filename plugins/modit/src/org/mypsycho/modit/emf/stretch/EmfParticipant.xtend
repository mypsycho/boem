package org.mypsycho.modit.emf.stretch

class EmfParticipant extends PartImplementation {

	// Behave like Pair but provide a static protection based on signature
	static abstract class Participation<P extends EmfParticipant> extends PartImplementation { // Pair is final :-(
		public val P key
		
		protected var EClassStretcher target
		
		protected new(P id, EClassStretcher value) {
			key = id
			target = value
		}
		
		/**
		 * Register the implementation into the strecher.
		 */
		abstract def void register(EmfStretcher it)
		
		/**
		 * Register the implementation into the stretcher.
		 * <p>
		 * Must be called on by stretcher.
		 * </p>
		 */
		package def void register(EClassStretcher it) {
			if (target !== it) throw new IllegalStateException("Already assigned")
			target = it
			context.register()
		}
		
		def getTarget() { target }
		
	}
	
}

