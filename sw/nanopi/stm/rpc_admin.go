// Generated by go-rpcgen. Do not modify.

package stm

import (
	"net/rpc"
	"time"
)

// InterfaceService is generated service for Interface interface.
type InterfaceService struct {
	impl Interface
}

// NewInterfaceService creates a new InterfaceService instance.
func NewInterfaceService(impl Interface) *InterfaceService {
	return &InterfaceService{impl}
}

// RegisterInterfaceService registers impl in server.
func RegisterInterfaceService(server *rpc.Server, impl Interface) error {
	return server.RegisterName("Interface", NewInterfaceService(impl))
}

// InterfacePowerTickRequest is a helper structure for PowerTick method.
type InterfacePowerTickRequest struct {
	D time.Duration
}

// InterfacePowerTickResponse is a helper structure for PowerTick method.
type InterfacePowerTickResponse struct {
}

// PowerTick is RPC implementation of PowerTick calling it.
func (s *InterfaceService) PowerTick(request *InterfacePowerTickRequest, response *InterfacePowerTickResponse) (err error) {
	err = s.impl.PowerTick(request.D)
	return
}

// InterfaceDUTRequest is a helper structure for DUT method.
type InterfaceDUTRequest struct {
}

// InterfaceDUTResponse is a helper structure for DUT method.
type InterfaceDUTResponse struct {
}

// DUT is RPC implementation of DUT calling it.
func (s *InterfaceService) DUT(request *InterfaceDUTRequest, response *InterfaceDUTResponse) (err error) {
	err = s.impl.DUT()
	return
}

// InterfaceTSRequest is a helper structure for TS method.
type InterfaceTSRequest struct {
}

// InterfaceTSResponse is a helper structure for TS method.
type InterfaceTSResponse struct {
}

// TS is RPC implementation of TS calling it.
func (s *InterfaceService) TS(request *InterfaceTSRequest, response *InterfaceTSResponse) (err error) {
	err = s.impl.TS()
	return
}

// InterfaceGetCurrentRequest is a helper structure for GetCurrent method.
type InterfaceGetCurrentRequest struct {
}

// InterfaceGetCurrentResponse is a helper structure for GetCurrent method.
type InterfaceGetCurrentResponse struct {
	Value int
}

// GetCurrent is RPC implementation of GetCurrent calling it.
func (s *InterfaceService) GetCurrent(request *InterfaceGetCurrentRequest, response *InterfaceGetCurrentResponse) (err error) {
	response.Value, err = s.impl.GetCurrent()
	return
}

// InterfaceStartCurrentRecordRequest is a helper structure for StartCurrentRecord method.
type InterfaceStartCurrentRecordRequest struct {
	Samples  int
	Interval time.Duration
}

// InterfaceStartCurrentRecordResponse is a helper structure for StartCurrentRecord method.
type InterfaceStartCurrentRecordResponse struct {
}

// StartCurrentRecord is RPC implementation of StartCurrentRecord calling it.
func (s *InterfaceService) StartCurrentRecord(request *InterfaceStartCurrentRecordRequest, response *InterfaceStartCurrentRecordResponse) (err error) {
	err = s.impl.StartCurrentRecord(request.Samples, request.Interval)
	return
}

// InterfaceStopCurrentRecordRequest is a helper structure for StopCurrentRecord method.
type InterfaceStopCurrentRecordRequest struct {
}

// InterfaceStopCurrentRecordResponse is a helper structure for StopCurrentRecord method.
type InterfaceStopCurrentRecordResponse struct {
}

// StopCurrentRecord is RPC implementation of StopCurrentRecord calling it.
func (s *InterfaceService) StopCurrentRecord(request *InterfaceStopCurrentRecordRequest, response *InterfaceStopCurrentRecordResponse) (err error) {
	err = s.impl.StopCurrentRecord()
	return
}

// InterfaceGetCurrentRecordRequest is a helper structure for GetCurrentRecord method.
type InterfaceGetCurrentRecordRequest struct {
}

// InterfaceGetCurrentRecordResponse is a helper structure for GetCurrentRecord method.
type InterfaceGetCurrentRecordResponse struct {
	Samples []int
}

// GetCurrentRecord is RPC implementation of GetCurrentRecord calling it.
func (s *InterfaceService) GetCurrentRecord(request *InterfaceGetCurrentRecordRequest, response *InterfaceGetCurrentRecordResponse) (err error) {
	response.Samples, err = s.impl.GetCurrentRecord()
	return
}

// InterfaceHDMIRequest is a helper structure for HDMI method.
type InterfaceHDMIRequest struct {
	On bool
}

// InterfaceHDMIResponse is a helper structure for HDMI method.
type InterfaceHDMIResponse struct {
}

// HDMI is RPC implementation of HDMI calling it.
func (s *InterfaceService) HDMI(request *InterfaceHDMIRequest, response *InterfaceHDMIResponse) (err error) {
	err = s.impl.HDMI(request.On)
	return
}

// InterfaceSetDyperRequest is a helper structure for SetDyper method.
type InterfaceSetDyperRequest struct {
	Dyper Dyper
	On    bool
}

// InterfaceSetDyperResponse is a helper structure for SetDyper method.
type InterfaceSetDyperResponse struct {
}

// SetDyper is RPC implementation of SetDyper calling it.
func (s *InterfaceService) SetDyper(request *InterfaceSetDyperRequest, response *InterfaceSetDyperResponse) (err error) {
	err = s.impl.SetDyper(request.Dyper, request.On)
	return
}

// InterfaceSetLthorIdRequest is a helper structure for SetLthorId method.
type InterfaceSetLthorIdRequest struct {
	State string
}

// InterfaceSetLthorIdResponse is a helper structure for SetLthorId method.
type InterfaceSetLthorIdResponse struct {
}

// SetLthorId is RPC implementation of SetLthorId calling it.
func (s *InterfaceService) SetLthorId(request *InterfaceSetLthorIdRequest, response *InterfaceSetLthorIdResponse) (err error) {
	err = s.impl.SetLthorId(request.State)
	return
}

// InterfaceSetLthorSwitchRequest is a helper structure for SetLthorSwitch method.
type InterfaceSetLthorSwitchRequest struct {
	State string
}

// InterfaceSetLthorSwitchResponse is a helper structure for SetLthorSwitch method.
type InterfaceSetLthorSwitchResponse struct {
}

// SetLthorSwitch is RPC implementation of SetLthorSwitch calling it.
func (s *InterfaceService) SetLthorSwitch(request *InterfaceSetLthorSwitchRequest, response *InterfaceSetLthorSwitchResponse) (err error) {
	err = s.impl.SetLthorSwitch(request.State)
	return
}

// InterfaceSetLthorVbusRequest is a helper structure for SetLthorVbus method.
type InterfaceSetLthorVbusRequest struct {
	On bool
}

// InterfaceSetLthorVbusResponse is a helper structure for SetLthorVbus method.
type InterfaceSetLthorVbusResponse struct {
}

// SetLthorVbus is RPC implementation of SetLthorVbus calling it.
func (s *InterfaceService) SetLthorVbus(request *InterfaceSetLthorVbusRequest, response *InterfaceSetLthorVbusResponse) (err error) {
	err = s.impl.SetLthorVbus(request.On)
	return
}

// InterfaceSetLEDRequest is a helper structure for SetLED method.
type InterfaceSetLEDRequest struct {
	Led     LED
	R, G, B uint8
}

// InterfaceSetLEDResponse is a helper structure for SetLED method.
type InterfaceSetLEDResponse struct {
}

// SetLED is RPC implementation of SetLED calling it.
func (s *InterfaceService) SetLED(request *InterfaceSetLEDRequest, response *InterfaceSetLEDResponse) (err error) {
	err = s.impl.SetLED(request.Led, request.R, request.G, request.B)
	return
}

// InterfaceClearDisplayRequest is a helper structure for ClearDisplay method.
type InterfaceClearDisplayRequest struct {
}

// InterfaceClearDisplayResponse is a helper structure for ClearDisplay method.
type InterfaceClearDisplayResponse struct {
}

// ClearDisplay is RPC implementation of ClearDisplay calling it.
func (s *InterfaceService) ClearDisplay(request *InterfaceClearDisplayRequest, response *InterfaceClearDisplayResponse) (err error) {
	err = s.impl.ClearDisplay()
	return
}

// InterfacePrintTextRequest is a helper structure for PrintText method.
type InterfacePrintTextRequest struct {
	X, Y  uint
	Color Color
	Text  string
}

// InterfacePrintTextResponse is a helper structure for PrintText method.
type InterfacePrintTextResponse struct {
}

// PrintText is RPC implementation of PrintText calling it.
func (s *InterfaceService) PrintText(request *InterfacePrintTextRequest, response *InterfacePrintTextResponse) (err error) {
	err = s.impl.PrintText(request.X, request.Y, request.Color, request.Text)
	return
}

// InterfaceClient is generated client for Interface interface.
type InterfaceClient struct {
	client *rpc.Client
}

// DialInterfaceClient connects to addr and creates a new InterfaceClient instance.
func DialInterfaceClient(addr string) (*InterfaceClient, error) {
	client, err := rpc.Dial("tcp", addr)
	return &InterfaceClient{client}, err
}

// NewInterfaceClient creates a new InterfaceClient instance.
func NewInterfaceClient(client *rpc.Client) *InterfaceClient {
	return &InterfaceClient{client}
}

// Close terminates the connection.
func (_c *InterfaceClient) Close() error {
	return _c.client.Close()
}

// PowerTick is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) PowerTick(d time.Duration) (err error) {
	_request := &InterfacePowerTickRequest{d}
	_response := &InterfacePowerTickResponse{}
	err = _c.client.Call("Interface.PowerTick", _request, _response)
	return err
}

// DUT is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) DUT() (err error) {
	_request := &InterfaceDUTRequest{}
	_response := &InterfaceDUTResponse{}
	err = _c.client.Call("Interface.DUT", _request, _response)
	return err
}

// TS is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) TS() (err error) {
	_request := &InterfaceTSRequest{}
	_response := &InterfaceTSResponse{}
	err = _c.client.Call("Interface.TS", _request, _response)
	return err
}

// GetCurrent is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) GetCurrent() (value int, err error) {
	_request := &InterfaceGetCurrentRequest{}
	_response := &InterfaceGetCurrentResponse{}
	err = _c.client.Call("Interface.GetCurrent", _request, _response)
	return _response.Value, err
}

// StartCurrentRecord is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) StartCurrentRecord(samples int, interval time.Duration) (err error) {
	_request := &InterfaceStartCurrentRecordRequest{samples, interval}
	_response := &InterfaceStartCurrentRecordResponse{}
	err = _c.client.Call("Interface.StartCurrentRecord", _request, _response)
	return err
}

// StopCurrentRecord is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) StopCurrentRecord() (err error) {
	_request := &InterfaceStopCurrentRecordRequest{}
	_response := &InterfaceStopCurrentRecordResponse{}
	err = _c.client.Call("Interface.StopCurrentRecord", _request, _response)
	return err
}

// GetCurrentRecord is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) GetCurrentRecord() (samples []int, err error) {
	_request := &InterfaceGetCurrentRecordRequest{}
	_response := &InterfaceGetCurrentRecordResponse{}
	err = _c.client.Call("Interface.GetCurrentRecord", _request, _response)
	return _response.Samples, err
}

// HDMI is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) HDMI(on bool) (err error) {
	_request := &InterfaceHDMIRequest{on}
	_response := &InterfaceHDMIResponse{}
	err = _c.client.Call("Interface.HDMI", _request, _response)
	return err
}

// SetDyper is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) SetDyper(dyper Dyper, on bool) (err error) {
	_request := &InterfaceSetDyperRequest{dyper, on}
	_response := &InterfaceSetDyperResponse{}
	err = _c.client.Call("Interface.SetDyper", _request, _response)
	return err
}

// SetLthorId is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) SetLthorId(state string) (err error) {
	_request := &InterfaceSetLthorIdRequest{state}
	_response := &InterfaceSetLthorIdResponse{}
	err = _c.client.Call("Interface.SetLthorId", _request, _response)
	return err
}

// SetLthorSwitch is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) SetLthorSwitch(state string) (err error) {
	_request := &InterfaceSetLthorSwitchRequest{state}
	_response := &InterfaceSetLthorSwitchResponse{}
	err = _c.client.Call("Interface.SetLthorSwitch", _request, _response)
	return err
}

// SetLthorVbus is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) SetLthorVbus(on bool) (err error) {
	_request := &InterfaceSetLthorVbusRequest{on}
	_response := &InterfaceSetLthorVbusResponse{}
	err = _c.client.Call("Interface.SetLthorVbus", _request, _response)
	return err
}

// SetLED is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) SetLED(led LED, r, g, b uint8) (err error) {
	_request := &InterfaceSetLEDRequest{led, r, g, b}
	_response := &InterfaceSetLEDResponse{}
	err = _c.client.Call("Interface.SetLED", _request, _response)
	return err
}

// ClearDisplay is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) ClearDisplay() (err error) {
	_request := &InterfaceClearDisplayRequest{}
	_response := &InterfaceClearDisplayResponse{}
	err = _c.client.Call("Interface.ClearDisplay", _request, _response)
	return err
}

// PrintText is part of implementation of Interface calling corresponding method on RPC server.
func (_c *InterfaceClient) PrintText(x, y uint, color Color, text string) (err error) {
	_request := &InterfacePrintTextRequest{x, y, color, text}
	_response := &InterfacePrintTextResponse{}
	err = _c.client.Call("Interface.PrintText", _request, _response)
	return err
}
