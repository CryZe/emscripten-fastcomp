; This testcase should have the cast propogated through the load
; just like a store does...
;
; RUN: if as < %s | opt -raise | dis | grep ' cast ' | grep '*'
; RUN: then exit 1
; RUN: else exit 0
; RUN: fi

int "test"(uint * %Ptr) {
	%P2 = cast uint *%Ptr to int *
	%Val = load int * %P2
	ret int %Val
}
